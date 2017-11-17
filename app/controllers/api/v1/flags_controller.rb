class Api::V1::FlagsController < ApplicationController

  before_action :create_spot, only:[:create]

  def index
    @flags = @current_user.flags

    render json: @flags
  end

  def create
    @flag = @current_user.flags.find_or_create_by(spot: @spot)

    render json: @flag 
  end

  private

    def create_spot
      @spot = Spot.find_or_initialize_by(spot_id: params[:spot][:spot_id].to_i)

      if @spot.new_record?
        region_id = Region.find_by(region_id: params[:spot][:region_id].to_i).id
        @spot.update_attributes(spot_params.slice(:name, :indoor, :lat, :lng).merge(region_id: region_id))
      end
    end

    def spot_params
      params.require(:spot).permit(:region_id, :spot_id, :name, :indoor, :lat, :lng)
    end

end

# curl -XPOST http://localhost:3000/api/v1/flags -d "spot[region_id]=564413768&spot[nickname]=황준우&spot[email]=capollux@naver.com&spot[thumbnail_image_url]=http://k.kakaocdn.net/dn/botmHz/btqirJVO1Jx/Kc5GrX0ocexx3Wlb0skPN1/profile_110x110c.jpg&spot[profile_image_url]=http://k.kakaocdn.net/dn/botmHz/btqirJVO1Jx/Kc5GrX0ocexx3Wlb0skPN1/profile_640x640s.jpg"
