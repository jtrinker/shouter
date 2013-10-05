class DashboardsController < ApplicationController
  def show
  	# Building a new Shout from dashboards#show
  	@shout = Shout.new
  	@shouts = current_user.shouts
  end
end
