require 'rails_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :dog => nil,
      :fname => "MyString",
      :lname => "MyString",
      :email => "MyString",
      :password => "MyString",
      :sitter => false
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_dog_id[name=?]", "user[dog_id]"

      assert_select "input#user_fname[name=?]", "user[fname]"

      assert_select "input#user_lname[name=?]", "user[lname]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_password[name=?]", "user[password]"

      assert_select "input#user_sitter[name=?]", "user[sitter]"
    end
  end
end
