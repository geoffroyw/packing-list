class ItemDocument < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :item

  belongs_to :item
end
