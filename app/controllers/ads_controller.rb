class AdsController < ApplicationController
  before_action :set_ad, only: %i[ show edit update destroy ]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @ads = policy_scope(Ad)
  end

  def show
    authorize @ad
    
    unless current_user == @ad.user
      @chatroom = Chatroom.find_or_create_by(user: current_user, ad: @ad)
    else
      @chatrooms = @ad.chatrooms
    end
  end

  def new
    @ad = Ad.new
    authorize @ad
  end

  def edit
    authorize @ad
  end

  def create
    @ad = Ad.new(ad_params)
    @ad.user = current_user
    authorize @ad
    if @ad.save
      redirect_to ad_path(@ad)
    else
      render :new
    end
  end

  def update
    authorize @ad
    @ad.update(ad_params)
    redirect_to ad_path(@ad)
  end

  def destroy
    authorize @ad
    @ad.destroy
    redirect_to root_path
  end

  private

  def set_ad
    @ad = Ad.find(params[:id])
  end


  def ad_params
    params.require(:ad).permit(:name, :department, :description, :price, :user_id, :photo)
  end
end
