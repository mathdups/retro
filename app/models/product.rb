class Product < ApplicationRecord

  validates :title, presence: true
  validates :price, presence: true
  validates :description, presence: true


  has_many :product_categories
  has_many :categories, through: :product_categories, dependent: :delete_all
  has_many :variants, class_name: 'ProductVariant'



end
