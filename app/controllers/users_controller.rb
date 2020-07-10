class UsersController < ApplicationController

  def index
  	@users = User.all
  	@targets = Target.all
    @targets = Target.page(params[:page]).per(5)
  end
  def show
  	@user = User.find(params[:id])
    @targets = Target.all
  end

  def edit
  	 @user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update(user_params)
      flash[:notice] = "successfully"
      redirect_to user_path(@user)
   else
    render :edit
   end
  end


  private
  def user_params
    params.require(:user).permit(:name, :body, :profile_image, :rank_status)
  end
end
