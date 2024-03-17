class Product < ApplicationRecord
  mount_uploader :image, ImageUploader

  with_options presence: true do
    validates :cpu
    validates :graphic
    validates :storage
    validates :memory
    validates :os
    validates :price
    validates :product_name
    validates :image
    validates :accessory
    validates :notice
  end
end
