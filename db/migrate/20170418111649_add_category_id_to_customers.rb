class AddCategoryIdToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :category_id, :integer
  end
end
