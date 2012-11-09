class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :id_product
      t.string :product_name
      t.string :bar_code
      t.float :client_price
      t.float :partner_price
      t.float :pv
      t.string :description
      t.string :contain
      t.string :measure
      t.integer :c_category_id
      t.integer :inStock

      t.timestamps
    end
  end
end
