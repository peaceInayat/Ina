class ChangeIntegerLimetInCustomers < ActiveRecord::Migration
  def change
    change_column :customers, :phone_no, :integer, limit: 8
  end
end
