class CreateTimings < ActiveRecord::Migration
  def change
    create_table :timings do |t|
      t.time :current_time
      t.date :current_date
      t.datetime :date_time

      t.timestamps
    end
  end
end
