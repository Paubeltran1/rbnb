class BookingsController < ApplicationController
  def create
    @pleureuse = Pleureuse.find(params[:pleureuse_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    @booking.pleureuse = @pleureuse
    calculate_days
    @booking.price = calculate_price
    if @booking.save
      redirect_to @booking.user, notice: 'Your booking was successfully created!'
    else
      render 'pleureuses/show'
    end
  end

  private

  def calculate_days
    @total_days = @booking.end_date - @booking.start_date
    @total_days = @total_days.to_i
  end

  def calculate_price
    @total_price = @total_days * @pleureuse.price
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
