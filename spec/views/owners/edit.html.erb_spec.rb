require 'rails_helper'

RSpec.describe "owners/edit", :type => :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!(
      :dog => nil,
      :name => "MyString",
      :email => "MyString",
      :password => "MyString",
      :doggie_cam => false,
      :insurance => false,
      :private_care => false,
      :full_time => false
    ))
  end

  it "renders the edit owner form" do
    render

    assert_select "form[action=?][method=?]", owner_path(@owner), "post" do

      assert_select "input#owner_dog_id[name=?]", "owner[dog_id]"

      assert_select "input#owner_name[name=?]", "owner[name]"

      assert_select "input#owner_email[name=?]", "owner[email]"

      assert_select "input#owner_password[name=?]", "owner[password]"

      assert_select "input#owner_doggie_cam[name=?]", "owner[doggie_cam]"

      assert_select "input#owner_insurance[name=?]", "owner[insurance]"

      assert_select "input#owner_private_care[name=?]", "owner[private_care]"

      assert_select "input#owner_full_time[name=?]", "owner[full_time]"
    end
  end
end
