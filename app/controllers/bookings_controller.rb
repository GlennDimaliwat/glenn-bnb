class BookingsController < ApplicationController

  def new
    @listing = Listing.find(params[:listing])
    @booking = Booking.new(check_in_at: Date.today, listing: @listing)
  end


  def create
    # Extract values from submitted form
    booking_params = params.require(:booking).permit(:check_in_at, :check_out_at, :guest_count, :listing_id)

    @listing = Listing.find(booking_params[:listing_id])

    # Create Booking model with these values
    @booking = Booking.new(booking_params)
  
    # guest.inspect
    @booking.guest = current_user

    if @booking.save
      redirect_to @listing
    else
      render :new
    end

  end
end
