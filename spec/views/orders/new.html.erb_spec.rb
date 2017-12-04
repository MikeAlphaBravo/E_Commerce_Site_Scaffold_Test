require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :status => "MyString",
      :total_price => "",
      :tax => "",
      :shipping => "",
      :subtotal => "",
      :order_number => "",
      :account_id => ""
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input[name=?]", "order[status]"

      assert_select "input[name=?]", "order[total_price]"

      assert_select "input[name=?]", "order[tax]"

      assert_select "input[name=?]", "order[shipping]"

      assert_select "input[name=?]", "order[subtotal]"

      assert_select "input[name=?]", "order[order_number]"

      assert_select "input[name=?]", "order[account_id]"
    end
  end
end
