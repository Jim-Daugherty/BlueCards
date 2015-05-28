class AddTroopFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :unit_type, :String
    add_column :users, :unit_number, :String
    add_column :users, :district, :string
    add_column :users, :council, :string
  end
end
