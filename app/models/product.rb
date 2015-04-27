# == Schema Information
#
# Table name: products
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :string
#  price         :decimal(, )
#  category_id   :integer
#  tax           :decimal(, )
#  imgsource     :string
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Product < ActiveRecord::Base
	has_many :options
	belongs_to :restaurant
	has_many :orders, through: :order_products
	belongs_to :category
	has_many :order_products
end
