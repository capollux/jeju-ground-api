class Api::V1::UsersController < ApplicationController

  skip_before_action :authenticate

  def create
    @user = User.find_or_initialize_by(kakao_id: params[:user][:kakao_id])

    if @user.update_attributes(user_params)
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    User.find_by(kakao_id: params[:id]).destroy

    head :no_content
  end

  private

    def user_params
      params.require(:user).permit(:kakao_id, :nickname, :email, :profile_image_url, :thumbnail_image_url)
    end

end
