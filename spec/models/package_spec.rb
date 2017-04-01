require 'rails_helper'

RSpec.describe Package, type: :model do
  it { should validate_presence_of :name }
  it { should have_many(:items).through(:package_items) }
  it { should have_many :package_items }
end
