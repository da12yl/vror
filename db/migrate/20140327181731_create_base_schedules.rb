class CreateBaseSchedules < ActiveRecord::Migration
  def change
    create_table :base_schedules do |t|
      t.integer :user_id
      t.timestamps
    end
  end
end
