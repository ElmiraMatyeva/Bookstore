ActiveAdmin.register User do
	filter :email

  permit_params :name

  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
    end
    active_admin_comments
  end

  index do
    selectable_column
    id_column
    column :name
    actions
  end


	
end
