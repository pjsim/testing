require 'rails_helper'

RSpec.describe "haggles/new", type: :view do
  before(:each) do
    assign(:haggle, Haggle.new(
      :commodity => nil,
      :open => false
    ))
  end

  it "renders new haggle form" do
    render

    assert_select "form[action=?][method=?]", haggles_path, "post" do

      assert_select "input#haggle_commodity_id[name=?]", "haggle[commodity_id]"

      assert_select "input#haggle_open[name=?]", "haggle[open]"
    end
  end
end
