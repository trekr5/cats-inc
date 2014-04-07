class PurchasesController < ApplicationController

  before_filter :authenticate_user!

  def create
    @purchase = Purchase.new
    item = Item.find(params[:item_id])
    @purchase.item = item
    @purchase.user = current_user

    if @purchase.save
      redirect_to item_path(item), notice: 'Purchase was successfully created.'
    else
      redirect_to item_path(item), warning: "Could not process your purchase."
    end
  end

end
