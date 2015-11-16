class CountriesController < ApplicationController
  # index
  def index
    @countries = Country.all
  end

  # new
  def new
    @country = Country.new
  end

  # create
  def create
    @country = Country.create!(countries_params)
    redirect_to country_path()
  end

  #show
  def show
    @country = Country.find(params[:id])
  end

  # edit
  def edit
    @country = Country.find(params[:country_id])
  end

  # update
  def update
    @strike = Strike.find(params[:id])
    @country = Country.find(params[:country_id])
    @country.update(countries_params)
    redirect_to country_path(@country)
  end

  # destroy
  def destroy
    @country = Country.find(params[:country_id])
    @country.destroy
    redirect_to countries_path()
  end

  private
  def countries_params
    params.require(:country).permit(:name, :reaseon, :assets, :flag_link)
  end
end
