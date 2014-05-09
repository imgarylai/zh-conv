class Api::BaseController < ApplicationController
  private

  def permission_denied
    render json: {error: 'unauthorized'}, status: :unauthorized
  end
end
