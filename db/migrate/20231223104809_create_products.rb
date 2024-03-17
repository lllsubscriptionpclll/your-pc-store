class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :cpu, null: false
      t.string :graphic, null: false
      t.string :storage, null: false
      t.string :memory, null: false
      t.string :os, null: false
      t.string :price, null: false
      t.string :product_name, null: false

      t.timestamps
    end
  end
end
