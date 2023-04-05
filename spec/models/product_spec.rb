require 'rails_helper'

RSpec.describe Product, type: :model do

  before(:each) do
    @category = Category.create!(name: "test_category")
    @product = Product.create!(
      name: "Anything",
      price_cents: 200,
      quantity: 20,
      category: @category
    )
  end
  
  describe 'Validations' do
    it "is not valid without a name presence" do
      @product.name = nil
      expect(@product).to_not be_valid
    end

    it "is not valid without a price presence" do
      @product.price_cents = nil
      expect(@product).to_not be_valid
    end

    it "is not valid without a quantity presence" do
      @product.quantity = nil
      expect(@product).to_not be_valid
    end

    it "is not valid without a category presence" do
      @product.category = nil
      expect(@product).to_not be_valid
    end

    # it "is valid with name" do
      
    # end
  end
end
