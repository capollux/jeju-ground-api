class Api::V1::SpotsController < ApplicationController

  def index
    @spots = Spot.includes(:region)

    json_array = Array.new
    visited_spots = @current_user.visited_spots.ids
    @spots.each do |spot|
      json_array << {spot_id: spot.spot_id, region: spot.region.name, name: spot.name, indoor: spot.indoor, lat: spot.lat, lng: spot.lng, visited: visited_spots.include?(spot.id)}
    end

    render json: json_array
  end

end
