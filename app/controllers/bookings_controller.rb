class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).where(user: current_user)
  end

  def new
    @dress = Dress.find(params[:dress_id])
    @booking = Booking.new
  end

  def create
    @dress = Dress.find(params[:dress_id])
    @booking = Booking.new(booking_params)
    @booking.dress = @dress
    @booking.user = current_user
    if @booking.save!
      redirect_to dress_path(@dress)
    else
      render :new
    end
  end

private

  def booking_params
    params.require(:booking).permit(:start_rent_at, :end_rent_at)
  end


end
