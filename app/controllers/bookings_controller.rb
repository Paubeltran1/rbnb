class BookingsController < ApplicationController
  def create

    @pleureuse = Pleureuse.find(params[:pleureuse_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    @booking.pleureuse = @pleureuse


    if @booking.save
      redirect_to booking_path(@booking), notice: 'Your booking was successfully created!'
    else
      render 'pleureuses/show'
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @pleureuse = @booking.pleureuse
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
