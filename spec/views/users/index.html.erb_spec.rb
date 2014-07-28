require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :dog => nil,
        :fname => "Fname",
        :lname => "Lname",
        :email => "Email",
        :password => "Password",
        :sitter => false
      ),
      User.create!(
        :dog => nil,
        :fname => "Fname",
        :lname => "Lname",
        :email => "Email",
        :password => "Password",
        :sitter => false
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Lname".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
