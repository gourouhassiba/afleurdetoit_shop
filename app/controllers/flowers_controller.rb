class FlowersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @flowers = Flower.all
    end
  end

  def show
    @flower = Flower.find(params[:id])
  end

  def restaurant_params
    params.require(:flower).permit(:name, :rating, :price_cents, :category, :photo_url, :description, :stock, tag_list: [])
  end
end
