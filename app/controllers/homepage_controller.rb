class HomepageController < ApplicationController

  def index
    @items = Item.where(promoted: true).limit(5)
  end

end
