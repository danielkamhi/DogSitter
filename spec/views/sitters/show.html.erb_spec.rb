require 'rails_helper'

RSpec.describe "sitters/show", :type => :view do
  before(:each) do
    @sitter = assign(:sitter, Sitter.create!(
      :dog => nil,
      :summary => "MyText",
      :years_of_experience => 1,
      :insurance => false,
      :full_time => false,
      :doggie_cam => false,
      :solo_care => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
