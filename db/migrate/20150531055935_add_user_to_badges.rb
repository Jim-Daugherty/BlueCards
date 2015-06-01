class AddUserToBadges < ActiveRecord::Migration
  def change
    add_reference :badges, :user, index: true, foreign_key: true
  end
end
