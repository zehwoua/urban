class Admin::AdminController < ApplicationController
  # before_filter :authenticate_admin_user!
  	def index
	  	# @users = (current_user.blank? ? User.all : User.find(:all, :conditions => ["id != ?", current_user.id]))
	  	# @latest_comments = Comment.latest_comment
	  	# @popular = FavoriteVideo.most_favorite_videos
  	end

  	def subregion_options
  		render partial: 'admin/subregion_select'
	  end

end
