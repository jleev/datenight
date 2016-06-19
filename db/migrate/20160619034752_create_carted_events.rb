class CreateCartedEvents < ActiveRecord::Migration
  def change
    create_table :carted_events do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
