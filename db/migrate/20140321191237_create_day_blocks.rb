class CreateDayBlocks < ActiveRecord::Migration
  def change
    create_table :day_blocks do |t|  
      t.string :time_range
      t.datetime :date
      t.string :role

      t.timestamps
    end
  end
end
