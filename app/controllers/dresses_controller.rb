class DressesController < ApplicationController
skip_before_action :authenticate_user!, only: [:index]

  def index
    dresses = Dress.joins(:user).where(users: { city: params[:city].capitalize })
    dresses = dresses.where(brand: params[:brand].capitalize) if params[:brand].present?
    dresses = dresses.where(color: params[:color].capitalize) if params[:color].present?
    dresses = dresses.where(size: params[:size].capitalize) if params[:size].present?

    @dresses = dresses.select{ |dress| dress.available }
  end

  def show
    @dress = Dress.find(params[:id])
    authorize @dress
  end

  def new
    @dress = Dress.new
    authorize @dress
  end

  def create
    @dress = Dress.new(dress_params)
    authorize @dress
    @dress.user = current_user

    if @dress.save!
      redirect_to dress_path(@dress)
    else
      render :new
    end
  end

  def destroy
    @dress = Dress.find(params[:id])
    authorize @dress
    @dress.destroy
    redirect_to root_path
  end

  private

  def dress_params
    params.require(:dress).permit(:brand, :color, :size, :description, :price, :photo)
  end
end
