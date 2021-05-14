class ListingsController < ApplicationController
  def index
    render json: Listing.all
  end

  def create
    listing = Listing.new(
      description: params[:description],
      year_built: params[:year_built],
      square_feet: params[:square_feet],
      bedrooms: params[:bedrooms],
      bathrooms: params[:bathrooms],
      availability: params[:availability],
      address: params[:address],
      price: params[:price],
    )
    if listing.save
      render json: listing
    else
      render json: listing.errors.full_messages
    end
  end

  def show
    listing = Listing.find(param[:id])
    render json: listing    
  end

  def update
    listing = Listing.find(param[:id])
    listing.description = param[:description] || listing.description
    listing.year_built = param[:year_built] || listing.year_built
    listing.square_feet = param[:square_feet] || listing.square_feet
    listing.bedrooms = param[:bedrooms] || listing.bedrooms
    listing.bathrooms = param[:bathrooms] || listing.bathrooms
    listing.availability = param[:availability] || listing.availability
    listing.address = param[:address] || listing.address
    listing.price = param[:price] || listing.price
    if listing.save
      render json: listing
    else
      render json: listing.errors.full_messages
    end
  end

  def destroy
    listing = Listing.find(param[:id])
    listing.destroy
    render json: {message: "Listing number #{[:id]} was destroyed."}
  end
end
