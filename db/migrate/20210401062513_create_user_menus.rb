class CreateUserMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :user_menus do |t|
      t.references :user, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
