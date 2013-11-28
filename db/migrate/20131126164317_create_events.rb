class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.string :place
      t.string :cost
      t.string :hour
      t.string :requirements
      t.string :notes
      t.timestamps
    end
  end
end
