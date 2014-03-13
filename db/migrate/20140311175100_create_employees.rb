class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :phone
      t.date :hiredate
      t.string :email
      t.string :image

      t.timestamps
    end
  end
end
