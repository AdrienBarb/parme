class ReviewsController < ApplicationController
  def new
    @dress = Dress.find(params[:dress_id])
    @review = Review.new
  end

  def create
    @dress = Dress.find(params[:dress_id])
    @review = Review.new(reviews_params)
    @review.dress = @dress
    @review.user = current_user
    if @review.save!
      redirect_to dress_path(@dress)
    else
      render :new
    end
  end

    #   @cocktail = Cocktail.find(params[:cocktail_id])
    # @dose = Dose.new(doses_params)
    # @dose.cocktail = @cocktail
    # if @dose.save
    #   redirect_to cocktail_path(@cocktail)

  private

  def reviews_params
    params.require(:review).permit(:rating, :description)
  end
end
