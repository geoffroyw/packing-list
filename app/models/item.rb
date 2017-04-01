class Item < ApplicationRecord
  validates_presence_of :name
  validates_numericality_of :quantity, :only_integer => true, :greater_than_or_equal_to => 1, :allow_blank => false, :allow_nil => false
  validate :bought_on_is_not_in_future

  has_many :documents, foreign_key: 'item_id', class_name: "ItemDocument"


  private
  def bought_on_is_not_in_future
    if bought_on.present? && bought_on > Date.today
      errors.add(:bought_on, "can't be in the future")
    end
  end
end
