class PatiencesController < ApplicationController
  
  def new
    @patience = Patience.new
    @target = Target.find_by(id: params[:target_id])
  end

  def create
    @patience = Patience.new(patience_params)
    if @patience.save
      redirect_to targets_path
    else
      render action: :new
    end
  end

  def show
    @patience = Patience.find(params[:id])
  end

  def update
    @patience = Patience.find(params[:id])
    if @patience.update(patience_params)
      redirect_to :root
    else
      render action: :edit
    end
  end

  def edit
    @patience = Patience.find(params[:id])
  end

  def destroy
    @patience = Patience.find(params[:id])
    @patience.destroy
    redirect_to targets_path
  end

  private
  def patience_params
    params.require(:patience).permit(:name, :price, :target_id)
  end
end
