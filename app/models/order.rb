class Order < ApplicationRecord
  belongs_to :restaurant
  belongs_to :customer
  has_many :order_menu_items
  has_many :menu_items, through: :order_menu_items
  def total
  	menu_items.sum(&:price)
  end
end
