class AddDristictCouncitUnitToBlueCards < ActiveRecord::Migration
  def change
    add_column :blue_cards, :unit, :string
    add_column :blue_cards, :district, :string
    add_column :blue_cards, :counsel, :string
  end
end
