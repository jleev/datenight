class AddStatusToCartedEvent < ActiveRecord::Migration
  def change
    add_column :carted_events, :status, :string
  end
end
