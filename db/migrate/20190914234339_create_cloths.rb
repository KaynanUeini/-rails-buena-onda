class CreateCloths < ActiveRecord::Migration[5.2]
  def change
    create_table :cloths do |t|
      t.string :name
      t.text :description
      t.string :category
      t.float :price1
      t.float :price2
      t.integer :shipping
      t.integer :stock
      t.string :brand
      t.string :size

      t.timestamps
    end
  end
end
