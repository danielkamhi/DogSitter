require 'rails_helper'

RSpec.describe "owners/index", :type => :view do
  before(:each) do
    assign(:owners, [
      Owner.create!(
        :dog => nil,
        :name => "Name",
        :email => "Email",
        :password => "Password",
        :doggie_cam => false,
        :insurance => false,
        :private_care => false,
        :full_time => false
      ),
      Owner.create!(
        :dog => nil,
        :name => "Name",
        :email => "Email",
        :password => "Password",
        :doggie_cam => false,
        :insurance => false,
        :private_care => false,
        :full_time => false
      )
    ])
  end

  it "renders a list of owners" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
