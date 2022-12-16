class Api::V1::ListingsController < Api::V1::BaseController
  def index
    @listings = Listing.all
    render json: @listings
  end
end
