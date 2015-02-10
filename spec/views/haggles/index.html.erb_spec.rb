require 'rails_helper'

RSpec.describe "haggles/index", type: :view do
  before(:each) do
    assign(:haggles, [
      Haggle.create!(
        :commodity => nil,
        :open => false
      ),
      Haggle.create!(
        :commodity => nil,
        :open => false
      )
    ])
  end

  it "renders a list of haggles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
