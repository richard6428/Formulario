require 'activeadmin'
ActiveAdmin.register User do
  permit_params :name, :lastname, :phone, :email

  index do
    selectable_column
    id_column
    column :name
    column :lastname
    column :phone
    column :email
    actions
  end

  filter :name
  filter :lastname

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :lastname
      f.input :phone
      f.input :email
    end
    f.actions
  end


end
