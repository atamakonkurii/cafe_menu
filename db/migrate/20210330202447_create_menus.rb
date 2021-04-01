class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :price
      t.string :image_name
      t.integer :menu_type

      t.timestamps
    end
  end
end
