ActiveAdmin.register Book do

  filter :title
  filter :author
  filter :book_category

  member_action :published, method: :put do
    resource.publish!
    redirect_to resource_path, notice: "Published!"
  end

  action_item :publish, only: show, if: proc { !resourse.published? } do
    link_to 'Publish', [:publish, :admin, resource], method: :put
  end

  permit_params :title, :body, :author_id


  form do |f|
    f.file_field :book_img
    f.input :book_category, :collection => { 'Fantasy' => 'Fantasy', 'Detective' => 'Detective', 'Classic' => 'Classic' }
    f.input :title, label: "Book Title"
    f.input :description
    f.input :author
    f.button :submit
    actions
  end
end
