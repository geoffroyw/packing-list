require 'rails_helper'

RSpec.describe PackageItem, type: :model do
  it { should belong_to :package }
  it { should belong_to :item }

  it { should validate_presence_of :item }
  it { should validate_presence_of :package }

  it { should validate_numericality_of(:quantity).is_greater_than_or_equal_to(1).only_integer }
  it { should_not validate_numericality_of(:quantity).allow_nil }

end
