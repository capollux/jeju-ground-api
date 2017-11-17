class ApplicationController < ActionController::API

  include ActionController::HttpAuthentication::Token::ControllerMethods

  # Add a before_action to authenticate all requests.
  # Move this to subclassed controllers if you only
  # want to authenticate certain methods.
  before_action :authenticate
  
  protected

    # Authenticate the user with token based authentication
    def authenticate
        authenticate_with_http_token do |token, options|
          @current_user = User.find_by(kakao_id: token.split.pop)
        end

        if @current_user.nil?
          render json: {'error':'Unauthorized.'}, status: :unauthorized 
        end
    end

end
