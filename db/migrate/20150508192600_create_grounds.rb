class CreateGrounds < ActiveRecord::Migration
  def change
    create_table :grounds do |t|
      t.string :sport
      t.time :open_time
      t.time :close_time

      t.timestamps
    end
  end
end
