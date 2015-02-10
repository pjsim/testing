require 'rails_helper'

RSpec.describe "commodities/new", type: :view do
  before(:each) do
    assign(:commodity, Commodity.new(
      :title => "MyString",
      :description => "MyText",
      :stock_quantity => 1.5,
      :quantity_units => "MyString"
    ))
  end

  it "renders new commodity form" do
    render

    assert_select "form[action=?][method=?]", commodities_path, "post" do

      assert_select "input#commodity_title[name=?]", "commodity[title]"

      assert_select "textarea#commodity_description[name=?]", "commodity[description]"

      assert_select "input#commodity_stock_quantity[name=?]", "commodity[stock_quantity]"

      assert_select "input#commodity_quantity_units[name=?]", "commodity[quantity_units]"
    end
  end
end
