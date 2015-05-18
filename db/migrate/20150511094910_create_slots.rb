class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.date :slot_date
      t.time :slot_start_time
      t.time :slot_end_time
      t.integer :slot_cost
      t.boolean :slot_status
      t.integer :ground_id

      t.timestamps
    end
  end
end
