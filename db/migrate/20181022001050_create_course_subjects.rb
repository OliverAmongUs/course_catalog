class CreateCourseSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :course_subjects do |t|
      t.string :course_name
      t.string :subject_code

      t.timestamps
    end
  end
end
