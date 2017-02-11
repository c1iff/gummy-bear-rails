require 'rails_helper'

describe "the edit a product process" do
  it "edits a  product" do
    product = Product.create(:name => 'test', :description => 'test', :features => 'test', :part_number => 'test', :cost => 49.99, :origin => "USA", :img_url => "http://www.clipartkid.com/images/226/gummy-bear-lamps-s6DOko-clipart.jpg")
    visit product_path(product)
    click_link 'Edit'
    fill_in 'Name', :with => 'Gummy Bear'
    click_on 'Add Product'
    expect(page).to have_content 'Gummy Bear'
  end

end
