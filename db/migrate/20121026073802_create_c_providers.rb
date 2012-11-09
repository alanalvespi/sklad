class CreateCProviders < ActiveRecord::Migration
  def change
    create_table :c_providers do |t|
      t.string :name_provider

      t.timestamps
    end
  end
end
