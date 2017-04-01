class Package < ApplicationRecord
  has_many :package_items
  has_many :items, through: :package_items

  validates_presence_of :name

  def total_number_of_items
    total_number_of_items = 0
    package_items.map { |pi| total_number_of_items+= pi.quantity }
    total_number_of_items
  end
end
