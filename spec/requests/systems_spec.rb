require 'rails_helper'

RSpec.describe "Systems", type: :request do
  describe "GET /systems" do
    it "works! (now write some real specs)" do
      get system_path
      expect(response).to have_http_status(200)
    end
  end
end