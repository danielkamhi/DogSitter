require 'rails_helper'

RSpec.describe "dogs/show", :type => :view do
  before(:each) do
    @dog = assign(:dog, Dog.create!(
      :breed => "Breed",
      :age => 1,
      :medical_status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Breed/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
  end
end
