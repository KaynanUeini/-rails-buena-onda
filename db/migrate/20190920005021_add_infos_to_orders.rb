class AddInfosToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :price, :float
    add_column :orders, :quantity, :integer
  end
end
