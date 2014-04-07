class StockAlertsController < ApplicationController
  before_filter :authenticate_user!

  def show
    @stock_alert = StockAlert.find(params[:id])
  end

  def create
    @stock_alert = StockAlert.new
    item = Item.find(params[:item_id])
    @stock_alert.item = item
    @stock_alert.user = current_user

    if @stock_alert.save
      redirect_to @stock_alert, notice: 'Stock alert was successfully created.'
    else
      redirect_to @stock_alert.item, warning: 'Could not create that stock alert.'
    end
  end

  def destroy
    @stock_alert = StockAlert.find(params[:id])
    @stock_alert.destroy
    redirect_to @stock_alert.item
  end

  private
end
