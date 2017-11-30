ActiveAdmin.register Student do
  permit_params :first_name, :father_last_name, :mother_last_name, :tag_student, :institutional_email, :personal_email, :reference_name, :cell_phone, :level_english
  index do
    selectable_column
    id_column
    column :first_name
    column :father_last_name
    column :mother_last_name
    column :tag_student
    column :institutional_email
    column :cell_phone
    column :level_english
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :first_name
      f.input :father_last_name
      f.input :mother_last_name
      f.input :tag_student
      f.input :institutional_email
      f.input :personal_email
      f.input :reference_name
      f.input :cell_phone
      f.input :level_english
    end
    f.actions
  end

  show do
    attributes_table do
      row :first_name
      row :father_last_name
      row :mother_last_name
      row :tag_student
      row :institutional_email
      row :personal_email
      row :reference_name
      row :cell_phone
      row :level_english
    end
  end

  filter :first_name_cont, label: "Nombre"
  filter :father_last_name_cont, label: "Apellido Paterno"
  filter :mother_last_name_cont, label: "Apellido Materno"
  filter :tag_student_cont, label: "Matrícula"
  filter :cell_phone_cont, label: "Número Teléfonico"
  filter :level_english_cont, label: "Nivel de Íngles"
end
