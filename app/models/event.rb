class Event < ActiveRecord::Base

  has_many :carted_events
  has_many :orders, through: :carted_events
  has_many :users, through: :carted_events

def starts_at
   strftime "%b %e, %l:%M %p"
end

end
