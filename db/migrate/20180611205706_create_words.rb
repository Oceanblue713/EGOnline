class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :English
      t.string :Japanese

      t.timestamps null: false
    end
  end
end
