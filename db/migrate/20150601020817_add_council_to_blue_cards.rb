class AddCouncilToBlueCards < ActiveRecord::Migration
  def change
    add_column :blue_cards, :council, :string
  end
end
