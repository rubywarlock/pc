class Content < ActiveRecord::Base
  attr_accessible :child_menu_id, :post, :title
	belongs_to :child_menu
end