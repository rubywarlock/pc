class ChildMenu < ActiveRecord::Base
  attr_accessible :childmenuname, :main_menu_id
	belongs_to :main_menu
end