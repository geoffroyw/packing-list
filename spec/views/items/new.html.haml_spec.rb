require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :name => "MyString",
      :quantity => 1,
      :original_price => 1.5,
      :original_currency => "MyString",
      :replacement_price => 10,
      :replacement_currency => 'ReplacementCurr',
      :serial_number => 'serial n'
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_quantity[name=?]", "item[quantity]"

      assert_select "input#item_original_price[name=?]", "item[original_price]"

      assert_select "input#item_original_currency[name=?]", "item[original_currency]"

      assert_select "input#item_replacement_price[name=?]", "item[replacement_price]"

      assert_select "input#item_replacement_currency[name=?]", "item[replacement_currency]"

      assert_select "input#item_serial_number[name=?]", "item[serial_number]"
    end
  end
end
