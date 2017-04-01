require 'rails_helper'

RSpec.describe Package, type: :model do
  it { should validate_presence_of :name }
end
