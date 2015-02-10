require 'rails_helper'

RSpec.describe "haggles/show", type: :view do
  before(:each) do
    @haggle = assign(:haggle, Haggle.create!(
      :commodity => nil,
      :open => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
