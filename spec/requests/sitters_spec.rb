require 'rails_helper'

RSpec.describe "Sitters", :type => :request do
  describe "GET /sitters" do
    it "works! (now write some real specs)" do
      get sitters_path
      expect(response.status).to be(200)
    end
  end
end
