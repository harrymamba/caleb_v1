ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :role_id, :school_id

  index do
    selectable_column
    id_column
    column :email
    column :role_id
    column :school_id
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :role_id, :label => 'Role', :as => :select, :collection => Role.all.map{|r| ["#{r.name}", r.id]}
      f.input :school_id, :label => 'School', :as => :select, :collection => School.where(is_active: true).order("name ASC").all.map{|s| ["#{s.name}", s.id]}
    end
    f.actions
  end

end
