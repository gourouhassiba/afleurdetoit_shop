class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
    authorize @user
  end
end
