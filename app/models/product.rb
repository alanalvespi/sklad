class Product < ActiveRecord::Base
  attr_accessible :bar_code, :c_category_id, :client_price, :contain, :description, :id_product, :inStock, :measure, :partner_price, :product_name, :pv
end
