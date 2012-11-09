class Order < ActiveRecord::Base
  attr_accessible :c_bill_id, :c_product_id, :c_product_name, :c_status_order_id, :comments, :partner_name, :percent_ship, :price_pz, :pv_pz, :quantity, :subtotal_product, :subtotal_pv
end
