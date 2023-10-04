class RemoveWrongMoneyColumnsProperties < ActiveRecord::Migration[7.0]
  def change
    remove_column :properties, :price_cent_cents
    remove_column :properties, :price_cent_currency
  end
end
