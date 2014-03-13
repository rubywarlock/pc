class ApplicationController < ActionController::Base
	before_filter :main_menu
	#protect_from_forgery

	#private
	def main_menu
		#@mainmenu = MainMenu.all
		@mainmenu = MainMenu.all
	end
end
