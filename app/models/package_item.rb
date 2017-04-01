class PackageItem < ApplicationRecord
  belongs_to :package
  belongs_to :item

  validates_presence_of :package
  validates_presence_of :item

  validates_numericality_of :quantity, greater_than_or_equal_to: 1, only_integer: true, allow_nil: false, allow_blank: false

end
