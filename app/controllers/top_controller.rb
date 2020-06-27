class TopController < ApplicationController
  def index
  	@users = User.all
  	@targets = Target.where(user: current_user).order("created_at ASC")
  end
end
