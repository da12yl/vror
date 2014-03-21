class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.date :day
      t.decimal :amount
      t.integer :user_id

      t.timestamps
    end
  end
end
