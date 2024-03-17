class AddapplicationFormToproducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :application_form, :text
  end
end
