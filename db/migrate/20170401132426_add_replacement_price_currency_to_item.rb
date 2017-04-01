class AddReplacementPriceCurrencyToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :replacement_price, :float
    add_column :items, :replacement_currency, :string
  end
end
