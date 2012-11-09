class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :id_partner
      t.string :partner_name
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end
