class FlowersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @flowers = Flower.all
    @selected_filters = []

    if params[:filter].present?
      @selected_filters = params[:filter][:tags].reject { |tag| tag == "" }
      @flowers = @flowers.tagged_with(@selected_filters)
    end
  end

  def show
    @flower = Flower.find(params[:id])
    @related_flowers = @flower.find_related_tags
  end

  def restaurant_params
    params.require(:flower).permit(:name, :rating, :price_cents, :category, :photo_url, :description, :stock, tag_list: [])
  end

  def tagged
    if params[:tag].present?
      @flowers = Flower.tagged_with(params[:tag])
    else
      @flowers = Flower.all
    end
  end
end
