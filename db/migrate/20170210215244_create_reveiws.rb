class CreateReveiws < ActiveRecord::Migration[5.0]
  def change
    create_table :reveiws do |t|
      t.column :user, :string
      t.column :content, :string
      t.column :rating, :string

      t.timestamps
    end
  end
end
