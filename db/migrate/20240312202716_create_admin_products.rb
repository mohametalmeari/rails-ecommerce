class CreateAdminProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :admin_products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.references :category, null: false, foreign_key: true
      t.string :active
      t.string :boolean

      t.timestamps
    end
  end
end
