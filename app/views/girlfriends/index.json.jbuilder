json.array!(@girlfriends) do |girlfriend|
  json.extract! girlfriend, :id, :name, :fav_food, :meeting_place, :pet_peeve, :age, :turn_ons, :home_town, :hair_color, :hobby
  json.url girlfriend_url(girlfriend, format: :json)
end
