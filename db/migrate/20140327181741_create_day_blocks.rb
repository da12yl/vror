class CreateDayBlocks < ActiveRecord::Migration
  def change
    create_table :day_blocks do |t|
      t.integer :base_schedule_id
      # 0-6 integer for day of week
      t.integer :day_index
      t.string :from
      t.string :to
    end
  end
end
