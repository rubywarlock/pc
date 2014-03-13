class MainMenu < ActiveRecord::Base
  attr_accessible :mainmenuname
	has_many :child_menus
end
