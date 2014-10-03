class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)

    if user_signed_in?
      @booking.user = current_user
    else
      @booking.user = User.new(email: params[:email])
    end

    property = Property.find(params[:property_id])

    @booking.property = property

    respond_to do |format|
      if @booking.save
        UserMailer.new_booking(@booking).deliver
        format.html { redirect_to root_path, notice: 'Booking confirmation has been sent by email.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def set_booking
      @booking = Property.find(params[:id])
    end

    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :user_id, :property_id)
    end
end
