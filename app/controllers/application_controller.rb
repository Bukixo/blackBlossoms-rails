class ApplicationController < ActionController::API
  before_action :authenticate_user!

  def authenticate_user!
    render json: { errors: ["Unauthorized"] }, status: 401 unless user_signed_in?
  end #returns error

  def user_signed_in?
    !!current_user
  end #checks if user is signed in

  def current_user #finds the user & will be called current_user and as it will be used in other files it cant be private
    @current_user ||= User.find(decoded_token[:id]) if id_found?
  rescue
    nil
  end

  private
    def id_found? #checks if we have found a user id inside the decoded token
      token && decoded_token && decoded_token[:id]
    end

    def decoded_token #decodes the token using the Auth class if a token was found
      @decoded_token ||= Auth.decode(token) if token
    end

    def token #gets the token
      @token ||= if request.headers['Authorization'].present?
        request.headers['Authorization'].split.last
      end
    end
end
