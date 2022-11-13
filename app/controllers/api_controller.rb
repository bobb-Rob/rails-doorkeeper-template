class ApiController < ApplicationController
  before_action :doorkeeper_authorize!

  # skip_before_action :verify_authenticity_token

  # Set response format to JSON
  respond_to :json

  # Set current user from doorkeeper token
  def current_user
    return unless doorkeeper_token

    @current_user ||= User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end

  # # Verify
  #   def verify_authenticity_token

  #   end
end
