require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add New Product'
    fill_in 'Name', :with => 'Jazzmaster'
    fill_in 'Description', :with => 'This is a description of a test product 1'
    fill_in 'Features', :with => '-feature 1, -feature 2, -feature 3'
    fill_in 'Part number', :with => '9999999'
    fill_in 'Cost', :with => '29.99'
    click_on 'Add Product'
    expect(page).to have_content 'Jazzmaster'
  end

  it "gives an error when a field is empty" do
    visit products_path
    click_link 'Add New Product'
    fill_in 'Name', :with => 'Jazzmaster'
    fill_in 'Description', :with => 'This is a description of a test product 1'
    fill_in 'Part number', :with => '9999999'
    fill_in 'Cost', :with => '29.99'
    click_on 'Add Product'
    expect(page).to have_content "Features can't be blank"
  end
end
