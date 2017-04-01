require 'rails_helper'

RSpec.describe 'items/index', type: :view do
  before(:each) do
    assign(:items, [
        Item.create!(
            :name => 'Item name',
            :quantity => 4,
            :original_price => 3.5,
            :original_currency => 'Original Currency',
            :replacement_price => 10.3,
            :replacement_currency => 'Replacement currency'
        ),
        Item.create!(
            :name => 'Item name',
            :quantity => 4,
            :original_price => 3.5,
            :original_currency => 'Original Currency',
            :replacement_price => 10.3,
            :replacement_currency => 'Replacement currency'
        )
    ])
  end

  it 'renders a list of items' do
    render
    assert_select 'tr>td', :text => 'Item name'.to_s, :count => 2
    assert_select 'tr>td', :text => 4.to_s, :count => 2
    assert_select 'tr>td', :text => '3.5 Original Currency'.to_s, :count => 2
    assert_select 'tr>td', :text => '10.3 Replacement currency'.to_s, :count => 2
  end
end
