ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|

  config.include FactoryGirl::Syntax::Methods

  config.treat_symbols_as_metadata_keys_with_true_values = true

  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"

  #config.before(:suite) do
    #DatabaseCleaner.strategy = :transaction
  #end
  #config.before(:each) do
    #DatabaseCleaner.start
  #end
  #config.after(:each) do
    #DatabaseCleaner.clean
  #end
end


def login 
  user = create(:user)
  user.save
  visit '/users/sign_in'
  fill_in "user[username]",    :with => user.username
  fill_in "user[password]", :with => user.password
  click_button "Sign in"
  page.should have_content(user.username)
end
