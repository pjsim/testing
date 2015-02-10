require 'rails_helper'

RSpec.describe "commodities/show", type: :view do
  before(:each) do
    @commodity = assign(:commodity, Commodity.create!(
      :title => "Title",
      :description => "MyText",
      :stock_quantity => 1.5,
      :quantity_units => "Quantity Units"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Quantity Units/)
  end
end
