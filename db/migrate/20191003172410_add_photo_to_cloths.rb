class AddPhotoToCloths < ActiveRecord::Migration[5.2]
  def change
    add_column :cloths, :photo1, :string
    add_column :cloths, :photo2, :string
  end
end
