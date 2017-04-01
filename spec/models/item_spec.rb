require 'rails_helper'

RSpec.describe Item, type: :model do
  it { should validate_presence_of :name }
  it { should validate_numericality_of(:quantity).is_greater_than_or_equal_to(1).only_integer }
  it { should_not validate_numericality_of(:quantity).allow_nil }
  it { should allow_value(Date.today).for(:bought_on) }
  it { should allow_value(Date.yesterday).for(:bought_on) }
  it { should_not allow_value(Date.tomorrow).for(:bought_on) }

  it {should have_many :documents}
end
