class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :c_product_id
      t.string :c_bill_id
      t.integer :quantity
      t.float :percent_ship
      t.float :price_pz
      t.float :pv_pz
      t.float :subtotal_product
      t.float :subtotal_pv
      t.integer :c_status_order_id
      t.string :partner_name
      t.string :c_product_name
      t.string :comments

      t.timestamps
    end
  end
end
