class Admin::DashboardController < ApplicationController

  before_filter :authenticate_user!

  def index
    redirect_to '/' unless current_user.is_admin?
    @recent_purchases = Purchase.order(created_at: :desc).limit(5)
  end
end
