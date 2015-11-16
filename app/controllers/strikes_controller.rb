class StrikesController < ApplicationController
  # index
  def index
      @country = Country.find(params[:country_id])
    @strikes = Strike.where("country_id = #{params[:country_id]}")
  end

  # new
  def new
      @countries = Country.all
    @country = Country.find(params[:country_id])
    @strike = Strike.new
  end

  # create
  def create
    @country = Country.find(params[:country_id])
    @strike = Strike.create!(strikes_params.merge(country: @country))
    redirect_to country_strike_path(@country, @strike)
  end

  #show
  def show
    @strike = Strike.find(params[:id])
  end

  # edit
  def edit
    @strike = Strike.find(params[:id])
  end

  # update
  def update
    @strike = Strike.find(params[:id])
    @country = Country.find(params[:country_id])
    @strike.update(strikes_params.merge(country: @country))
    redirect_to country_strike_path(@strike.country, @strike)
  end

  # destroy
  def destroy
    @strike = Strike.find(params[:id])
    @strike.destroy
    redirect_to strikes_path
  end

  private
  def strikes_params
    params.require(:strike).permit(:country_id, :target_id, :airstrike, :date, :time, :area)
  end
end
