class CartedEvent < ActiveRecord::Base

    belongs_to :order
    belongs_to :event
    belongs_to :user

end
