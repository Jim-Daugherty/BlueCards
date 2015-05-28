class CreatePrintOrders < ActiveRecord::Migration
  def change
    create_table :print_orders do |t|
      t.datetime :order_date
      t.datetime :print_date
      t.datetime :ship_date

      t.timestamps null: false
    end
  end
end
