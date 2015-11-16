class StrikesController < ApplicationController
  # index
  def index
    @strikes = Strike.all
  end

  # new
  def new
    @country = Country.find(params[:country_id])
    @strike = Strike.new
  end

  # create
  def create
    @country = Country.find(params[:country_id])
    @strike = Strike.create!(strike_params.merge(country: @country))
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
    @strike.update(strike_params.merge(country: @country))
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
    params.require(:strike).permit(:country_id, :target_id, :type, :date, :time, :area)
  end
end
