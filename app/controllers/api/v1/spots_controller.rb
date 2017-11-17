class Api::V1::SpotsController < ApplicationController

  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find_by(spot_id: params[:id].to_i)

    render json: @spot
  end

  def create
    @spot = Spot.find_or_initialize_by(spot_id: params[:spot][:spot_id].to_i)

    region_id = Region.find_by(region_id: params[:spot][:region_id].to_i).id

    if @spot.update_attributes(spot_params.slice(:name, :indoor, :lat, :lng).merge(region_id: region_id))
      render json: @spot, status: :created
    else
      render json: @spot.errors, status: :unprocessable_entity
    end
  end

  private

    def spot_params
      params.require(:spot).permit(:region_id, :spot_id, :name, :indoor, :lat, :lng)
    end

end
