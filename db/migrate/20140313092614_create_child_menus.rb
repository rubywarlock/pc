class CreateChildMenus < ActiveRecord::Migration
  def change
    create_table :child_menus do |t|
      t.string :childmenuname
      t.integer :main_menu_id

      t.timestamps
    end
  end
end
