class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :id_bill
      t.date :date_bill
      t.float :total_order
      t.float :total_pv
      t.string :c_partner_id
      t.string :partner_name
      t.integer :bill_status

      t.timestamps
    end
  end
end
