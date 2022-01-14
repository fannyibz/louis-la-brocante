class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @ads = Ad.all
  end

  def dashboard
    @user_ads = Ad.all.where(user: current_user)
  end

end
