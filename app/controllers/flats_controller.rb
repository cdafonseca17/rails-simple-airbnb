class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create(params_create)
    redirect_to flats_path
  end

  def show
    @flat = Flat.find(params[:id])
  end

  private

  def params_create
    params.require(:flat).permit(:name, :description, :address, :price_per_night, :number_of_guests)
  end
end
