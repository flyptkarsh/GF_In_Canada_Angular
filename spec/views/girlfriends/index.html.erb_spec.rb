require 'rails_helper'

RSpec.describe "girlfriends/index", :type => :view do
  before(:each) do
    assign(:girlfriends, [
      Girlfriend.create!(
        :name => "Name",
        :fav_food => "Fav Food",
        :meeting_place => "Meeting Place",
        :pet_peeve => "Pet Peeve",
        :age => 1,
        :turn_ons => "MyText",
        :home_town => "Home Town",
        :hair_color => "Hair Color",
        :hobby => "Hobby"
      ),
      Girlfriend.create!(
        :name => "Name",
        :fav_food => "Fav Food",
        :meeting_place => "Meeting Place",
        :pet_peeve => "Pet Peeve",
        :age => 1,
        :turn_ons => "MyText",
        :home_town => "Home Town",
        :hair_color => "Hair Color",
        :hobby => "Hobby"
      )
    ])
  end

  it "renders a list of girlfriends" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Fav Food".to_s, :count => 2
    assert_select "tr>td", :text => "Meeting Place".to_s, :count => 2
    assert_select "tr>td", :text => "Pet Peeve".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Home Town".to_s, :count => 2
    assert_select "tr>td", :text => "Hair Color".to_s, :count => 2
    assert_select "tr>td", :text => "Hobby".to_s, :count => 2
  end
end
