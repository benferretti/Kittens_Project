class ChangeColumnInProductCartsTotalpriceToInteger < ActiveRecord::Migration[5.2]
  def up
    change_column :product_carts, :total_price, :integer
  end

  def down
  end
end
