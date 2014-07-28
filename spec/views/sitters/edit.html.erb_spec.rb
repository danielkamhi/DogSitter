require 'rails_helper'

RSpec.describe "sitters/edit", :type => :view do
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

  it "renders the edit sitter form" do
    render

    assert_select "form[action=?][method=?]", sitter_path(@sitter), "post" do

      assert_select "input#sitter_dog_id[name=?]", "sitter[dog_id]"

      assert_select "textarea#sitter_summary[name=?]", "sitter[summary]"

      assert_select "input#sitter_years_of_experience[name=?]", "sitter[years_of_experience]"

      assert_select "input#sitter_insurance[name=?]", "sitter[insurance]"

      assert_select "input#sitter_full_time[name=?]", "sitter[full_time]"

      assert_select "input#sitter_doggie_cam[name=?]", "sitter[doggie_cam]"

      assert_select "input#sitter_solo_care[name=?]", "sitter[solo_care]"
    end
  end
end
