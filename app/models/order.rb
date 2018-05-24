class Order < ApplicationRecord
  belongs_to :restaurant
  belongs_to :customer
  def customer_name
    customer.name
  end
  has_many :order_menu_items
  has_many :menu_items, through: :order_menu_items

end
