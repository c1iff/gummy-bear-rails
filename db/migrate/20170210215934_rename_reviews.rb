class RenameReviews < ActiveRecord::Migration[5.0]
  def change
    rename_table :reveiws, :reviews
  end
end
