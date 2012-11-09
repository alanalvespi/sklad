class Incomestock < ActiveRecord::Base
  attr_accessible :id_income_stock, :product_name, :product_number, :product_price, :product_pv, :quantity
end
