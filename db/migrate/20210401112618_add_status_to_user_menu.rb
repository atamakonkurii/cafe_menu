class AddStatusToUserMenu < ActiveRecord::Migration[6.1]
  def change
    add_column :user_menus, :status, :integer
  end
end
