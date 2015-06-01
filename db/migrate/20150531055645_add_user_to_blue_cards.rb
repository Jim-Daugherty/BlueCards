class AddUserToBlueCards < ActiveRecord::Migration
  def change
    add_reference :blue_cards, :user, index: true, foreign_key: true
  end
end
