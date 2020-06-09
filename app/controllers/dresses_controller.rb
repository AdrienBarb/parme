class DressesController < ApplicationController
  def index
    all_dresses = Dress.joins(:user).where(users: params[:city])
    @dresses = all_dresses.select{ |dress| dress.available }
  end
end
