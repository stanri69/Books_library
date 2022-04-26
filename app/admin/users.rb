ActiveAdmin.register User do

  filter :email
  filter :name
  filter :number

  permit_params :email, :name, :number

end
