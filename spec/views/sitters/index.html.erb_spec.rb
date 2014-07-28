require 'rails_helper'

RSpec.describe "sitters/index", :type => :view do
  before(:each) do
    assign(:sitters, [
      Sitter.create!(
        :dog => nil,
        :summary => "MyText",
        :years_of_experience => 1,
        :insurance => false,
        :full_time => false,
        :doggie_cam => false,
        :solo_care => false
      ),
      Sitter.create!(
        :dog => nil,
        :summary => "MyText",
        :years_of_experience => 1,
        :insurance => false,
        :full_time => false,
        :doggie_cam => false,
        :solo_care => false
      )
    ])
  end

  it "renders a list of sitters" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
