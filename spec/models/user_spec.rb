require 'spec_helper'
describe User do
  let(:user) { create(:user) }

  it "has a valid factory" do
    user.should be_valid
  end
end
