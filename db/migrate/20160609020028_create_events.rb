class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :category
      t.decimal :price
      t.integer :price_range
      t.string :theater_name
      t.string :name
      t.string :address
      t.string :state
      t.string :city
      t.integer :zip
      t.datetime :datetime
      t.text :description
      t.string :status, default: "in_process"
      t.boolean :confirmed, default: false

      t.timestamps null: false
    end
  end
end
