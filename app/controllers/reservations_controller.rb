class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to @reservation
    else
      render 'new'
    end
  end

  private
    def reservation_params
      params.require(:reservation).permit(:partysize, :time, :day, :user_id)
    end
end
