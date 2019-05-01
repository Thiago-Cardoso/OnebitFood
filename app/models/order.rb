class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :order_products

  validates :name, presence: true
  validates :phone_number, presence: true
  validates :total_value, presence: true

  enum status: { waiting: 0, delivered: 1 }

  accepts_nested_attributes_for :order_products, allow_destroy: true
end
