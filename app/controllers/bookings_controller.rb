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
  background = ["https://images.unsplash.com/photo-1505693626181-b858934dce6a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80(178 kB)
","https://images.unsplash.com/photo-1505693626181-b858934dce6a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80(178 kB)","https://images.unsplash.com/photo-1484619817839-dfc3452be01f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80","https://images.unsplash.com/photo-1556978255-8699ebacb579?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1048&q=80(141 kB)","https://images.unsplash.com/photo-1574808146141-fbd663cfb174?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80","https://images.unsplash.com/photo-1564434887573-4a2a234d9200?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80","https://images.unsplash.com/photo-1564887343163-92bba7c4234b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80","https://images.unsplash.com/photo-1528535619428-a995242b9096?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80","https://images.unsplash.com/photo-1549816044-47649bae10f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80","https://images.unsplash.com/photo-1506280225777-ced660ce8f16?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjExMDk0fQ&auto=format&fit=crop&w=1050&q=80"]


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

