class ChangeIntegerLimitInCustomers < ActiveRecord::Migration
  def change
    change_column :customers, :image_file_size, :integer, limit: 8
  end
end
