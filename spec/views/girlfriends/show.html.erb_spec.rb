require 'rails_helper'

RSpec.describe "girlfriends/show", :type => :view do
  before(:each) do
    @girlfriend = assign(:girlfriend, Girlfriend.create!(
      :name => "Name",
      :fav_food => "Fav Food",
      :meeting_place => "Meeting Place",
      :pet_peeve => "Pet Peeve",
      :age => 1,
      :turn_ons => "MyText",
      :home_town => "Home Town",
      :hair_color => "Hair Color",
      :hobby => "Hobby"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Fav Food/)
    expect(rendered).to match(/Meeting Place/)
    expect(rendered).to match(/Pet Peeve/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Home Town/)
    expect(rendered).to match(/Hair Color/)
    expect(rendered).to match(/Hobby/)
  end
end
