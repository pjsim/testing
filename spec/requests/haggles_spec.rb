require 'rails_helper'

RSpec.describe "Haggles", type: :request do
  describe "GET /haggles" do
    it "works! (now write some real specs)" do
      get haggles_path
      expect(response).to have_http_status(200)
    end
  end
end
