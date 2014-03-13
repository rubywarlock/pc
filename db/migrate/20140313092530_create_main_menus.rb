class CreateMainMenus < ActiveRecord::Migration
  def change
    create_table :main_menus do |t|
      t.string :mainmenuname

      t.timestamps
    end
  end
end
