class StrikesController < ApplicationController
  # index
  def index
      @country = Country.find(params[:country_id])
    @strikes = Strike.where("country_id = #{params[:country_id]}")
  end

  # new
  def new
    @targets = Target.all.sort_by{ |m| m.name.downcase }
    @countries = Country.all
    @country = Country.find(params[:country_id])
    @strike = Strike.new
  end

  # create
  def create
    @country = Country.find(params[:country_id])
    @strike = Strike.create!(strikes_params.merge(country: @country))
    redirect_to country_strikes_path(params[:country_id])
  end

  #show
  def show
    @strike = Strike.find(params[:id])
  end

  # edit
  def edit
    @strike = Strike.find(params[:id])
    @strikes = Strike.all
    @targets = Target.all.sort_by{ |m| m.name.downcase }
  end

  # update
  def update
    @strike = Strike.find(params[:id])
    @country = Country.find(params[:country_id])
    @strike.update(strikes_params.merge(country: @country))
    redirect_to '/home'
  end

  # destroy
  def destroy
    @strike = Strike.find(params[:id])
    @strike.destroy
    redirect_to home_index_path()
  end

  private
  def strikes_params
    params.require(:strike).permit(:country_id, :target_id, :airstrike, :date, :time, :area)
  end
end
