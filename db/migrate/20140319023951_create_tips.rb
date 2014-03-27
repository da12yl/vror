class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.integer :user_id
      t.date :day
      t.decimal :amount

      t.timestamps
    end
  end
end
