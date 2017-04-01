require 'rails_helper'

RSpec.describe ItemDocument, type: :model do
  it { should validate_presence_of :item }
  it { should validate_presence_of :name }
  it { should belong_to :item }
end
