class AddUserToPrintOrders < ActiveRecord::Migration
  def change
    add_reference :print_orders, :user, index: true, foreign_key: true
  end
end
