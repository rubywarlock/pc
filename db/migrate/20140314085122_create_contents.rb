class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.text :post
      t.integer :child_menu_id

      t.timestamps
    end
  end
end
