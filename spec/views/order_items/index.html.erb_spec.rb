require 'rails_helper'

RSpec.describe "order_items/index", type: :view do
  before(:each) do
    assign(:order_items, [
      OrderItem.create!(
        :qauntity => "",
        :product_id => "",
        :order_id => ""
      ),
      OrderItem.create!(
        :qauntity => "",
        :product_id => "",
        :order_id => ""
      )
    ])
  end

  it "renders a list of order_items" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
