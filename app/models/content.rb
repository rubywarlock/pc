class Content < ActiveRecord::Base
  attr_accessible :child_menu_id, :post, :title, :assets_attributes
  belongs_to :child_menu
	has_many :assets
	accepts_nested_attributes_for :assets, :allow_destroy => true

end