class ItineraryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.itinerary_mailer.review_itinerary.subject
  #
  def review_itinerary
    @greeting = "Hi"

    mail to: "to@example.org",
         subject: "Review Our Possible Plans"

    params[:info]
    #create email code
    render :nothing => true, :status => 200
  end


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.itinerary_mailer.confirm_itinerary.subject
  #
  def confirm_itinerary
    @greeting = "Hi"

    mail to: "to@example.org",
         subject: "Here Are Our Plans"
  end
end
