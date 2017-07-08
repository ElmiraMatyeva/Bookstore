ActiveAdmin.register Book do
	filter :title
	config.sort_order = 'title_asc'

	permit_params :title, :description, :category_id, :user, :image, author_ids: []

	form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :category
      f.input :user
      f.input :author_ids
      f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
    end
    f.actions
  end

	index do
	  selectable_column
	  id_column
	    column :image do |book|
	      image_tag book.image.url(:thumb)
	    end
	    column :title do |book|
	      link_to book.title, admin_book_path(book)
	    end
	    column :author_ids
	    column :category
	    column :user
	    actions
	  end

    show do
      attributes_table do
      row :image do |book|
      image_tag book.image.url(:medium)
      end
	  row :title
	  row :category
	  row :author_ids
	  row :description
	  row :user
  end
  active_admin_comments
 end

end
