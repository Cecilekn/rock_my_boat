class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @boats = Boat.where.not(latitude: nil, longitude: nil)

    @markers = @boats.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { boat: boat }),
        image_url: helpers.asset_url('https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621184/Rock%20My%20Boat/46d1a096d37130f762120e96788867b7_exz1sq.jpg')
      }
    end
  end
end
