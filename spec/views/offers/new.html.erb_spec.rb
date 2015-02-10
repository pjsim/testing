require 'rails_helper'

RSpec.describe "offers/new", type: :view do
  before(:each) do
    assign(:offer, Offer.new(
      :haggle => nil,
      :type => 1,
      :price => "9.99",
      :quantity => 1.5,
      :meet_you => false,
      :meet_me => false,
      :meet_half => false,
      :ship_you => false,
      :from => 1,
      :to => 1
    ))
  end

  it "renders new offer form" do
    render

    assert_select "form[action=?][method=?]", offers_path, "post" do

      assert_select "input#offer_haggle_id[name=?]", "offer[haggle_id]"

      assert_select "input#offer_type[name=?]", "offer[type]"

      assert_select "input#offer_price[name=?]", "offer[price]"

      assert_select "input#offer_quantity[name=?]", "offer[quantity]"

      assert_select "input#offer_meet_you[name=?]", "offer[meet_you]"

      assert_select "input#offer_meet_me[name=?]", "offer[meet_me]"

      assert_select "input#offer_meet_half[name=?]", "offer[meet_half]"

      assert_select "input#offer_ship_you[name=?]", "offer[ship_you]"

      assert_select "input#offer_from[name=?]", "offer[from]"

      assert_select "input#offer_to[name=?]", "offer[to]"
    end
  end
end
