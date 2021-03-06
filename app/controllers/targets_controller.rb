class TargetsController < ApplicationController
  before_action :authenticate_user!
  def index
    # ここのwhereでuser_idが現在ログイン中のユーザーのレコードを持ってこれる
    @targets = Target.where(user: current_user).order("created_at ASC")
  end

  def new
    @target = Target.new
  end

  def edit
    @target = Target.find(params[:id])
  end

  def update
      @target = Target.find(params[:id])
    if @target.update(target_params)
      redirect_to targets_path
    else
      render :edit
    end
  end

  def destroy
    @target = Target.find(params[:id])
    @target.destroy
    redirect_to targets_path
  end

  def create
      @target = Target.new(target_params)
    if @target.save
      redirect_to targets_path
    else
      render :new
    end
  end

  def show
    @target = Target.find(params[:id])
    @post_comment = PostComment.new
  end

  def calendar
    @targets = Target.where(user: current_user).order("created_at ASC")
  end

  private
  def target_params
    params.require(:target).permit(:title, :price, :start_time, :target_status).merge(user: current_user)
  end
end
