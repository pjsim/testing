require 'rails_helper'

RSpec.describe "haggles/edit", type: :view do
  before(:each) do
    @haggle = assign(:haggle, Haggle.create!(
      :commodity => nil,
      :open => false
    ))
  end

  it "renders the edit haggle form" do
    render

    assert_select "form[action=?][method=?]", haggle_path(@haggle), "post" do

      assert_select "input#haggle_commodity_id[name=?]", "haggle[commodity_id]"

      assert_select "input#haggle_open[name=?]", "haggle[open]"
    end
  end
end
