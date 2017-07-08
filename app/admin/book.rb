ActiveAdmin.register Book do
	filter :title
	config.sort_order = 'title_asc'
end
