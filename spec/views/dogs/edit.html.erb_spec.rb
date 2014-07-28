require 'rails_helper'

RSpec.describe "dogs/edit", :type => :view do
  before(:each) do
    @dog = assign(:dog, Dog.create!(
      :breed => "MyString",
      :age => 1,
      :medical_status => false
    ))
  end

  it "renders the edit dog form" do
    render

    assert_select "form[action=?][method=?]", dog_path(@dog), "post" do

      assert_select "input#dog_breed[name=?]", "dog[breed]"

      assert_select "input#dog_age[name=?]", "dog[age]"

      assert_select "input#dog_medical_status[name=?]", "dog[medical_status]"
    end
  end
end
