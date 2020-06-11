class DressesController < ApplicationController
  before_action :set_dress, only: %i[show online offline destroy]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    dresses = policy_scope(Dress).joins(:user).where(users: { city: params[:city].capitalize })
    dresses = dresses.where(brand: params[:brand].capitalize) if params[:brand].present?
    dresses = dresses.where(color: params[:color].capitalize) if params[:color].present?
    dresses = dresses.where(size: params[:size].capitalize) if params[:size].present?

    @dresses = dresses.select{ |dress| dress.available }
  end

  def show
  end

  def new
    @dress = Dress.new
    authorize @dress
  end

  def create
    @dress = Dress.new(dress_params)
    authorize @dress
    @dress.user = current_user

    if @dress.save
      redirect_to dress_path(@dress)
    else
      render :new
    end
  end

  def online
    @dress.update!(available: true)

    redirect_to my_dresses_path
  end

  def offline
    @dress.update!(available: false)

    redirect_to my_dresses_path
  end

  def destroy
    @dress.destroy
    redirect_to my_dresses_path
  end

  def my_dresses
    @dresses = policy_scope(Dress).where(user: current_user).order(:brand)
  end

  private

  def set_dress
    @dress = Dress.find(params[:id])
    authorize @dress
  end

  def dress_params
    params.require(:dress).permit(:brand, :color, :size, :description, :price, :photo)
  end
end
