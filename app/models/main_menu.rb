class MainMenu < ActiveRecord::Base
  attr_accessible :mainmenuname, :mainmanu_id
	has_many :child_menus
end
