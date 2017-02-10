require 'rails_helper'

describe "the edit a product process" do
  it "edits a  product" do
    product = Product.create(:name => 'test', :description => 'test', :features => 'test', :part_number => 'test', :cost => 49.99)
    visit products_path
    click_link 'Edit'
    fill_in 'Name', :with => 'Gummy Bear'
    click_on 'Add Product'
    expect(page).to have_content 'Gummy Bear'
  end

end
