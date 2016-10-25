class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.string :student_name
      t.string :student_grade
      t.string :poem_title
      t.text :poem

      t.timestamps null: false
    end
  end
end
