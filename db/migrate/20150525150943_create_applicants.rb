class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :scouttype

      t.timestamps null: false
    end
  end
end
