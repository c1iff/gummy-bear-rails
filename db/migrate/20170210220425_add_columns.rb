class AddColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :origin, :string
    add_column :reviews, :product_id, :integer
  end
end
