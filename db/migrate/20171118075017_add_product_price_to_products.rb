class AddProductPriceToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :product_price, :float
  end
end
