require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :status => "Status",
        :total_price => "",
        :tax => "",
        :shipping => "",
        :subtotal => "",
        :order_number => "",
        :account_id => ""
      ),
      Order.create!(
        :status => "Status",
        :total_price => "",
        :tax => "",
        :shipping => "",
        :subtotal => "",
        :order_number => "",
        :account_id => ""
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
