class RemoveCounselFromBluecards < ActiveRecord::Migration
  def change
    remove_column :blue_cards, :counsel, :string
  end
end
