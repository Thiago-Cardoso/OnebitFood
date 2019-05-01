class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id, :title
 
  has_many :products

  include Rails.application.routes.url_helpers
 
  attributes :id, :name, :description, :price, :image_url
  
  def image_url
    rails_blob_url(object.image)
  end
end
