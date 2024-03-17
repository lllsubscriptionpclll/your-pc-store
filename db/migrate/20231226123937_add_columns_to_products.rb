class AddColumnsToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :accessory, :string
    add_column :products, :notice, :text
  end
end
