require 'rails_helper'

RSpec.describe "dogs/index", :type => :view do
  before(:each) do
    assign(:dogs, [
      Dog.create!(
        :breed => "Breed",
        :age => 1,
        :medical_status => false
      ),
      Dog.create!(
        :breed => "Breed",
        :age => 1,
        :medical_status => false
      )
    ])
  end

  it "renders a list of dogs" do
    render
    assert_select "tr>td", :text => "Breed".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
