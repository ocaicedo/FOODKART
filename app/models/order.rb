# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  date        :datetime
#  number      :integer
#  total       :decimal(, )
#  discount    :decimal(, )
#  customer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Order < ActiveRecord::Base
	has_many :products, through: :order_products
	belongs_to :customer
	has_many :order_products
	accepts_nested_attributes_for :order_products
  
end
