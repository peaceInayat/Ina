class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone_no
      t.string :email_id
      t.text :to_get_done

      t.timestamps null: false
    end
  end
end
