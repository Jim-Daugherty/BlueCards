class AddFields3ToBlueCards < ActiveRecord::Migration
  def change
    add_column :blue_cards, :counselor_name, :string
    add_column :blue_cards, :counselor_address, :string
    add_column :blue_cards, :counselor_city, :string
    add_column :blue_cards, :counselor_state, :string
    add_column :blue_cards, :counselor_zipcode, :string
    add_column :blue_cards, :counselor_telephone, :string
  end
end
