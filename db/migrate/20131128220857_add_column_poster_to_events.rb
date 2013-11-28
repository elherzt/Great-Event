class AddColumnPosterToEvents < ActiveRecord::Migration
  def change
    add_column :events, :poster, :string
  end
end
