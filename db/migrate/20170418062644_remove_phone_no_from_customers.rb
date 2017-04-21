class RemovePhoneNoFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :phone_no, :string
  end
end
