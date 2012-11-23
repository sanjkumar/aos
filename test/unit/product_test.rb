require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "product attributes must not be empty" do
     product = product.new
     assert product.invalid?
     assert product.error[:name].any?
     assert product.error[:description].any?
     assert product.error[:image_url].any?
     assert product.error[:weight].any?
     assert product.error[:price].any?
  end

  test "product price must be positive" do
    product = Product.new(:title => "My Book Title",
                          :description =>"yyy",
                          :image_url =>"zzz.jpg",)
  end


end
