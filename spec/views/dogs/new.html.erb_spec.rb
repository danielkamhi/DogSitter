require 'rails_helper'

RSpec.describe "dogs/new", :type => :view do
  before(:each) do
    assign(:dog, Dog.new(
      :breed => "MyString",
      :age => 1,
      :medical_status => false
    ))
  end

  it "renders new dog form" do
    render

    assert_select "form[action=?][method=?]", dogs_path, "post" do

      assert_select "input#dog_breed[name=?]", "dog[breed]"

      assert_select "input#dog_age[name=?]", "dog[age]"

      assert_select "input#dog_medical_status[name=?]", "dog[medical_status]"
    end
  end
end
