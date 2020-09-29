class FlowersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @flowers = Flower.all
  end

  def show
    @flower = Flower.find(params[:id])
  end
end
