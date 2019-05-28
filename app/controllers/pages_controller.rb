class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @boats = Boat.where.not(latitude: nil, longitude: nil)

    @markers = @boats.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { boat: boat })
      }
    end
  end
end
