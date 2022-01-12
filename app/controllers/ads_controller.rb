class AdsController < ApplicationController
  before_action :set_ad, only: %i[ show edit update destroy ]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @ads = policy_scope(Ad)
  end

  def show
    authorize @ad
  end

  def new
    @ad = Ad.new
  end

  def edit
    authorize @ad
  end

  def create
    authorize @service
    @ad = Ad.new(ad_params)
    @ad.user = current_user
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
    params.require(:ad).permit(:name, :type,:description, :price, :user_id)
  end
end
