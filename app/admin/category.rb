ActiveAdmin.register Category do
	filter :title
	config.sort_order = 'title_asc'

	permit_params :title

  form do |f|
    f.inputs do
      f.input :title
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
    end
    active_admin_comments
  end

  index do
    selectable_column
    id_column
    column :title
    actions
  end
end
