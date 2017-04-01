class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name, :nullable => false
      t.integer :quantity, :nullable => false, :default => 1
      t.float :original_price
      t.string :original_currency
      t.date :bought_on

      t.timestamps
    end
  end
end
