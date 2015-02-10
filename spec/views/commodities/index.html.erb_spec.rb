require 'rails_helper'

RSpec.describe "commodities/index", type: :view do
  before(:each) do
    assign(:commodities, [
      Commodity.create!(
        :title => "Title",
        :description => "MyText",
        :stock_quantity => 1.5,
        :quantity_units => "Quantity Units"
      ),
      Commodity.create!(
        :title => "Title",
        :description => "MyText",
        :stock_quantity => 1.5,
        :quantity_units => "Quantity Units"
      )
    ])
  end

  it "renders a list of commodities" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Quantity Units".to_s, :count => 2
  end
end
