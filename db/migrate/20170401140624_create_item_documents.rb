class CreateItemDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :item_documents do |t|
      t.belongs_to :item, index: true
      t.string :name

      t.timestamps
    end
  end
end
