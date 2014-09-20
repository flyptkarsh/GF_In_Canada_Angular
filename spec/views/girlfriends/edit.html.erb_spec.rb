require 'rails_helper'

RSpec.describe "girlfriends/edit", :type => :view do
  before(:each) do
    @girlfriend = assign(:girlfriend, Girlfriend.create!(
      :name => "MyString",
      :fav_food => "MyString",
      :meeting_place => "MyString",
      :pet_peeve => "MyString",
      :age => 1,
      :turn_ons => "MyText",
      :home_town => "MyString",
      :hair_color => "MyString",
      :hobby => "MyString"
    ))
  end

  it "renders the edit girlfriend form" do
    render

    assert_select "form[action=?][method=?]", girlfriend_path(@girlfriend), "post" do

      assert_select "input#girlfriend_name[name=?]", "girlfriend[name]"

      assert_select "input#girlfriend_fav_food[name=?]", "girlfriend[fav_food]"

      assert_select "input#girlfriend_meeting_place[name=?]", "girlfriend[meeting_place]"

      assert_select "input#girlfriend_pet_peeve[name=?]", "girlfriend[pet_peeve]"

      assert_select "input#girlfriend_age[name=?]", "girlfriend[age]"

      assert_select "textarea#girlfriend_turn_ons[name=?]", "girlfriend[turn_ons]"

      assert_select "input#girlfriend_home_town[name=?]", "girlfriend[home_town]"

      assert_select "input#girlfriend_hair_color[name=?]", "girlfriend[hair_color]"

      assert_select "input#girlfriend_hobby[name=?]", "girlfriend[hobby]"
    end
  end
end
