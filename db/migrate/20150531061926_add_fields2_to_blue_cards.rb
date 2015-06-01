class AddFields2ToBlueCards < ActiveRecord::Migration
  def change
    add_column :blue_cards, :badge_name, :string
  end
end
