class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :id_product_category
      t.string :category_name
      t.string :category_division
      t.string :category_description

      t.timestamps
    end
  end
end
