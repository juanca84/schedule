class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.datetime :hour_start
      t.datetime :hour_finish

      t.timestamps
    end
  end
end
