class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :features, :string
      t.column :part_number, :string
      t.column :cost, :decimal

      t.timestamps 
    end
  end
end
