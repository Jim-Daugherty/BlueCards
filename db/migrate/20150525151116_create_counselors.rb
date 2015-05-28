class CreateCounselors < ActiveRecord::Migration
  def change
    create_table :counselors do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :telephone

      t.timestamps null: false
    end
  end
end
