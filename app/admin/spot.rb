ActiveAdmin.register Spot do
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

  permit_params :region_id, :spot_id, :name, :indoor, :lat, :lng, :active

  index do
    selectable_column
    id_column
    column :region
    column :spot_id
    column :name
    column :indoor
    column :lat
    column :lng
    column :active
    actions
  end

  filter :none

  form do |f|
    f.inputs "Spot Details" do
      f.input :region_id, as: :select, collection: Region.all.map{|r| [r.name, r.id] }
      f.input :spot_id
      f.input :name
      f.input :indoor
      f.input :lat
      f.input :lng
      f.input :active
    end
    f.actions
  end

end
