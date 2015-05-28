class CreateBlueCards < ActiveRecord::Migration
  def change
    create_table :blue_cards do |t|

      t.timestamps null: false
    end
  end
end
