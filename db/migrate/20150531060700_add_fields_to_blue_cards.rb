class AddFieldsToBlueCards < ActiveRecord::Migration
  def change
    add_column :blue_cards, :applicant_name, :string
    add_column :blue_cards, :applicant_address, :string
    add_column :blue_cards, :applicant_city, :string
    add_column :blue_cards, :applicant_scouttype, :string
  end
end
