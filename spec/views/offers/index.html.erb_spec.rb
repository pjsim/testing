require 'rails_helper'

RSpec.describe "offers/index", type: :view do
  before(:each) do
    assign(:offers, [
      Offer.create!(
        :haggle => nil,
        :type => 1,
        :price => "9.99",
        :quantity => 1.5,
        :meet_you => false,
        :meet_me => false,
        :meet_half => false,
        :ship_you => false,
        :from => 2,
        :to => 3
      ),
      Offer.create!(
        :haggle => nil,
        :type => 1,
        :price => "9.99",
        :quantity => 1.5,
        :meet_you => false,
        :meet_me => false,
        :meet_half => false,
        :ship_you => false,
        :from => 2,
        :to => 3
      )
    ])
  end

  it "renders a list of offers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
