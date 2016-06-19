class Order < ActiveRecord::Base

  belongs_to :user
  has_many :carted_events
  has_many :events, through: :carted_events

end
