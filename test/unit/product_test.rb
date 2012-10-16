# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  image_url   :string(255)
#  price       :decimal(8, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
product = Product.new
assert product.invalid?
assert product.errors[:title].any?
assert product.errors[:description].any?
assert product.errors[:price].any?
assert product.errors[:image_url].any?
end
