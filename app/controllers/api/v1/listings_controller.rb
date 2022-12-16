class Api::V1::ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :update, :destroy]

  def index
    @listings = Listing.all
    render json: @listings
  end

  def create
    @listing = Listing.new(listing_params)

    if @listing.save
      render json: @listing
    else
      render json: { error: 'Unable to create listing.' }, status: 400
    end
  end

  def show
    render json: @listing
  end

  def update
    if @listying.update(listing_params)
      render json: @listing
    else
      render json: { error: 'Unable to update listing.' }, status: 400
    end
  end

  def destroy
    if @listying.destroy(listing_params)
      render json: @listing
    else
      render json: { error: 'Unable to destroy listing.' }, status: 400
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:num_rooms, :listing_id)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
