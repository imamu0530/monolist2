class RankingsController < ApplicationController


  def have
    #@items = current_user.have_items.limit(10)
    @have_key = Have.group(:item_id).order('count_all desc').limit(10).count.keys
    @items=Item.find(@have_key)
  end
  
  def want
    @have_key = Want.group(:item_id).order('count_all desc').limit(10).count.keys
    @items = Item.find(@have_key)
  end


end
