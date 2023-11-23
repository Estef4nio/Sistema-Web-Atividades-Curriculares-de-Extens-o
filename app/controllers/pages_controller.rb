class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:users]
  before_action :authenticate_admin!, only: [:admin]

  def home
  end

  def users
    @user = current_user
  end

  def admin
    @user = User.all
  end

  private

  def user_profile
    @user = current_user
  end
end