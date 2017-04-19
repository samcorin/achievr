ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

form do |f|
  f.inputs "Identity" do
    f.input :email
  end
  f.inputs "Admin" do
    f.input :admin
  end
  f.actions
end

permit_params :email, :admin

# permit_params :list, :of, :attributes, :on, :model
# permit_params :email, :admin, :password

index do
  selectable_column
  column :id
  column :email
  column :admin
  column :created_at
  actions
end




# bio

#
# or
#


# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
