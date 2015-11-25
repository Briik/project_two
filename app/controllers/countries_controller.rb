class CountriesController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  # index
  def index
    @countries = Country.all.sort_by{ |m| m.name.downcase }
  end

  # new
  def new
    @country = Country.new
  end

  # create
  def create
    @country = Country.create!(countries_params)
    redirect_to countries_path()
    # It'd be "Railsy-er" to not include the (). But hey, Javascript4Lyfe
  end

  #show
  def show
    @country = Country.find(params[:id])
  end

  # edit
  def edit
    @country = Country.find(params[:id])
  end

  # update
  def update
    @country = Country.find(params[:id])
    @country.update(countries_params)
    redirect_to country_strikes_path(@country.id)
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
