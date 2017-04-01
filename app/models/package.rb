class Package < ApplicationRecord
  has_many :package_items
  has_many :items, through: :package_items

  validates_presence_of :name
end
