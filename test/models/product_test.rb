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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
