require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :name => "MyString",
      :quantity => 1,
      :original_price => 1.5,
      :original_currency => "MyString"
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_quantity[name=?]", "item[quantity]"

      assert_select "input#item_original_price[name=?]", "item[original_price]"

      assert_select "input#item_original_currency[name=?]", "item[original_currency]"
    end
  end
end
