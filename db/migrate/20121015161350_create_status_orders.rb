class CreateStatusOrders < ActiveRecord::Migration
  def change
    create_table :status_orders do |t|
      t.integer :id_status
      t.string :description
      t.string :notes

      t.timestamps
    end
  end
end
