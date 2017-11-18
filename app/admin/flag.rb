ActiveAdmin.register Flag do
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
  permit_params :user, :spot

  index do
    selectable_column
    id_column
    column :user
    column :spot
    actions
  end

  filter :none

  form do |f|
    f.inputs "Flag Details" do
      f.input :user, as: :select, collection: User.all.map{|u| [u.nickname, u.email].join(" | ")}
      f.input :spot, as: :select, collection: Spot.all.map{|s| s.name}
    end
    f.actions
  end

end
