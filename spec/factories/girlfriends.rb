# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :girlfriend do
    name "MyString"
    fav_food "MyString"
    meeting_place "MyString"
    pet_peeve "MyString"
    age 1
    turn_ons "MyText"
    home_town "MyString"
    hair_color "MyString"
    hobby "MyString"
  end
end
