class CreateIncomestocks < ActiveRecord::Migration
  def change
    create_table :incomestocks do |t|
      t.string :id_income_stock
      t.string :product_number
      t.string :product_name
      t.float :product_price
      t.float :product_pv
      t.integer :quantity

      t.timestamps
    end
  end
end
