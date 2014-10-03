class UserMailer < ActionMailer::Base
  default from: "contact@timesharing.com"

  def new_booking(booking)
    #Send booking information to confirm by the requester user

    @booking = booking
    @user = booking.user
    @property = booking.property
    @url = root_path
    mail(to: booking.user.email, subject: "[Time Share Scheduled] Confirm you booking")
  end

  def confirm_booking
    # Send emails to tour@example.com
  end
end
