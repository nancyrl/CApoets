class CreatePoems < ActiveRecord::Migration
  def up
    create_table :poems do |t|
      t.string :teacher_name
      t.string :county
      t.string :email
      t.string :student_name
      t.string :grade
      t.string :student_teacher_name
      t.string :title
      t.string :attachment
      t.text :poem
    end
  end

  def down
    drop_table :poems
  end
end
