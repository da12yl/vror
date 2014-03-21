class CreateAvailables < ActiveRecord::Migration
  def change
    create_table :availables do |t|
      t.integer :user_id
      t.date :day
      t.time :from
      t.time :to

      t.timestamps
    end
  end
end
