class HomeController < ApplicationController
  # index
  def index
    @strikes = Strike.all
  end
  end
