class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :id_provider
      t.string :name_provider
      t.float :total_amount

      t.timestamps
    end
  end
end
