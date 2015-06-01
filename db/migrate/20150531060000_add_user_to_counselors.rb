class AddUserToCounselors < ActiveRecord::Migration
  def change
    add_reference :counselors, :user, index: true, foreign_key: true
  end
end
