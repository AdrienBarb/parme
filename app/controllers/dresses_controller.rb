class DressesController < ApplicationController
  def index
    all_dresses = Dress.joins(:user).where(users: { city: params[:city] })
    @dresses = all_dresses.select{ |dress| dress.available }
  end

  def show
    @dress = Dress.find(params[:id])
  end

  def new
  end

  def create
  end

end
