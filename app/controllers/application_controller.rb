class ApplicationController < ActionController::API
  before_action :authenticate_user!

  skip_before_action :authenticate_user!, only: [:health]

  def health
    render json: "Healthy!"
  end
end
