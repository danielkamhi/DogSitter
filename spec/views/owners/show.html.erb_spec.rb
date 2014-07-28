require 'rails_helper'

RSpec.describe "owners/show", :type => :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!(
      :dog => nil,
      :name => "Name",
      :email => "Email",
      :password => "Password",
      :doggie_cam => false,
      :insurance => false,
      :private_care => false,
      :full_time => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
