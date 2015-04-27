# == Schema Information
#
# Table name: order_products
#
#  id         :integer          not null, primary key
#  product_id :integer
#  order_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OrderProduct < ActiveRecord::Base
	belongs_to :product
	belongs_to :order
end
