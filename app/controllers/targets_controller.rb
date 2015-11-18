class TargetsController < ApplicationController
  # index
  def index
    @targets = Target.all.sort_by{ |m| m.name.downcase }
  end

  # new
  def new
    @target = Target.new
  end

  # create
  def create
    @target = Target.create!(targets_params)
    redirect_to targets_path()
  end

  #show
  def show
    @target = Target.find(params[:id])
    @this_target_id = params[:id]
    @strikes = Strike.where(:target_id => @this_target_id)
  end

  # edit
  def edit
    @target = Target.find(params[:target_id])
  end

  # update
  def update
    @strike = Strike.find(params[:id])
    @target = Target.find(params[:target_id])
    @Target.update(targets_params)
    redirect_to target_path(@target)
  end

  # destroy
  def destroy
    @target = Target.find(params[:target_id])
    @Target.destroy
    redirect_to targets_path()
  end

  private
  def targets_params
    params.require(:target).permit(:name)
  end
end
