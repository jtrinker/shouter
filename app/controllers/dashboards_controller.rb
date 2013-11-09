class DashboardsController < ApplicationController
  def show
  	# sandi metz rule: controller should only be creating one object.
  	# so we should be creating a dashboard, since it is the dashboards_controller
  	# @text_shout = TextShout.new
  	# @photo_shout = PhotoShout.new
  	# @shouts = current_user.shouts

  	@dashboard = Dashboard.new(current_user)
  end
end
