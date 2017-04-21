class RemoveCategoryFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :category, :string
  end
end
