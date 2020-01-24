class BookingsController < ApplicationController
  def create


    @pleureuse = Pleureuse.find(params[:pleureuse_id])
    @booking = Booking.new
    @booking.start_date = params[:booking][:start_date].split('to') [0]
    if params[:booking][:start_date].split(' to ') [1].nil?
    @booking.end_date = params[:booking][:start_date].split('to') [0]
    else
    @booking.end_date = params[:booking][:start_date].split(' to ') [1]
    end

    @booking.user = current_user
    authorize @booking

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
    authorize @pleureuse
  end

def index
  @bookings = policy_scope(Booking).all
  @mybookings = current_user.bookings


end

def edit
  @booking = Booking.find(params[:id])
  authorize @booking
end

def update
  @booking = Booking.find(params[:id])
  authorize @booking
  if @booking.update(booking_params)
  redirect_to booking_path(@booking), notice: 'Your booking was successfully modified!'
  else
    render 'edit'
  end
end

def destroy
  @booking = Booking.find(params[:id])
  @booking.destroy
  authorize @booking
  redirect_to bookings_path
end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

