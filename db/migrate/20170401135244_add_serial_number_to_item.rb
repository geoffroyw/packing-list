class AddSerialNumberToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :serial_number, :string
  end
end
