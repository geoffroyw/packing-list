class Item < ApplicationRecord
  has_many :documents, foreign_key: 'item_id', class_name: "ItemDocument"

  has_many :package_items
  has_many :packages, through: :package_items

  validates_presence_of :name
  validates_numericality_of :quantity, :only_integer => true, :greater_than_or_equal_to => 1, :allow_blank => false, :allow_nil => false
  validate :bought_on_is_not_in_future



  private
  def bought_on_is_not_in_future
    if bought_on.present? && bought_on > Date.today
      errors.add(:bought_on, "can't be in the future")
    end
  end
end
