class DressesController < ApplicationController
  def index
    all_dresses = Dress.joins(:user).where(users: { city: params[:city] })
    @dresses = all_dresses.select{ |dress| dress.available }
  end

  def show
    @dress = Dress.find(params[:id])
  end

  def new
    @dress = Dress.new
  end

  def create
    @dress = Dress.new(dress_params)
    @dress.user = current_user

    if @dress.save!
      redirect_to dress_path(@dress)
    else
      render :new
    end
  end

  def article_params      #didier
  params.require(:dress).permit(:title, :body, :photo) #didier
end #didier

  private

  def dress_params
    params.require(:dress).permit(:brand, :color, :size, :description, :price, :photo)
  end
end
