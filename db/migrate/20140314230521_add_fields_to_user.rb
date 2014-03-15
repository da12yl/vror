class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :hire_date, :date
    add_column :users, :phone, :string
  end
end
