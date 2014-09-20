class CreateGirlfriends < ActiveRecord::Migration
  def change
    create_table :girlfriends do |t|
      t.string :name
      t.string :fav_food
      t.string :meeting_place
      t.string :pet_peeve
      t.integer :age
      t.text :turn_ons
      t.string :home_town
      t.string :hair_color
      t.string :hobby

      t.timestamps
    end
  end
end
