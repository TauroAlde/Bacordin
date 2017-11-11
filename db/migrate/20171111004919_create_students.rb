class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :father_last_name
      t.string :mother_last_name
      t.integer :tag_student
      t.string :institutional_email
      t.string :personal_email
      t.string :reference_name
      t.integer :cell_phone
      t.string :level_englsih
      t.timestamps null: false
    end
  end
end
