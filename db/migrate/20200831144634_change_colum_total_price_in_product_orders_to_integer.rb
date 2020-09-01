class ChangeColumTotalPriceInProductOrdersToInteger < ActiveRecord::Migration[5.2]
  def up
    change_column :product_orders, :total_price, :integer
  end
  def down
  end
end
