class CreatePackageItems < ActiveRecord::Migration[5.0]
  def change
    create_table :package_items do |t|
      t.integer :quantity, nullable: false
      t.belongs_to :package, foreign_key: true, index: true
      t.belongs_to :item, foreign_key: true, index: true

      t.timestamps
    end
  end
end
