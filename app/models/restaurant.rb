class Restaurant < ApplicationRecord
  belongs_to :category
  has_many :product_categories
  has_many :orders
  has_many :reviews
end
