ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

permit_params :name, :phone, :email

  index do
    selectable_column
    id_column
    column :name
    column :phone
    column :email
    actions
  end

  filter :name
  filter :phone
  filter :email
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :phone
      f.input :email
    end
    f.actions
  end


end
