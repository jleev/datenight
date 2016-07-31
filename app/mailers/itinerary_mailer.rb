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
  end

  def body
    content = Unirest.get("/api/v1/carted_events.json").body
    @content = content["info"]["events"]
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
