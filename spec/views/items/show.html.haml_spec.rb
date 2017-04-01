require 'rails_helper'

RSpec.describe "items/show", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
        :name => "Name",
        :quantity => 2,
        :original_price => 3.5,
        :original_currency => "Original Currency",
        :replacement_price => 10,
        :replacement_currency => "Replacement Currency",
        :serial_number => 'serial n'
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5 Original Currency/)
    expect(rendered).to match(/10.0 Replacement Currency/)
    expect(rendered).to match(/serial n/)
  end
end
