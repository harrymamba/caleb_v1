class AddAuthTokenToAdminUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_users, :auth_token, :string
  end
end
