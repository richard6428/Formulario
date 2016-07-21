require 'activeadmin'
ActiveAdmin.register User do
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

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :phone
      f.input :email
    end
    f.actions
  end


end
