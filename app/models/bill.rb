class Bill < ActiveRecord::Base
  attr_accessible :bill_status, :c_partner_id, :date_bill, :id_bill, :partner_name, :total_order, :total_pv
end
