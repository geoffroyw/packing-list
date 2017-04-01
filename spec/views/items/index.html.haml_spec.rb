require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :name => "Name",
        :quantity => 2,
        :original_price => 3.5,
        :original_currency => "Original Currency"
      ),
      Item.create!(
        :name => "Name",
        :quantity => 2,
        :original_price => 3.5,
        :original_currency => "Original Currency"
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => "Original Currency".to_s, :count => 2
  end
end
