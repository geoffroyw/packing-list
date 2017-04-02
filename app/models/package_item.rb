class PackageItem < ApplicationRecord
  belongs_to :package
  belongs_to :item

  validates_presence_of :package
  validates_presence_of :item

  validates_numericality_of :quantity, greater_than_or_equal_to: 1, only_integer: true, allow_nil: false, allow_blank: false

  validate :not_too_high_quantity

  private

  def not_too_high_quantity
    if item.present? && item.quantity > quantity
      errors.add(:quantity, "exceeds the total quantity of the item")
    end
  end

end
