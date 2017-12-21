class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :father_last_name
      t.string :mother_last_name
      t.string :tag_student
      t.string :institutional_email
      t.string :personal_email
      t.string :reference_name
      t.integer :cell_phone, limit: 8
      t.string :level_english
      t.timestamps null: false
    end
  end
end
