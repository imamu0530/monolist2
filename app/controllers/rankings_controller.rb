class RankingsController < ApplicationController


  def have
    @have_key = Have.group(:item_id).order('count_id desc').limit(10).count(:id)
    @items = @have_key.transform_keys!{ |key| Item.find(key) }
    #@items = current_user.have_items.limit(10)
    #@have_key = Have.group(:item_id).order('count_all desc').limit(10).count.keys
    #@items=@have_key.map { |key| Item.key}
    #@items=Item.where(id: @have_key)
  end
  
  def want
    @want_key = Want.group(:item_id).order('count_id desc').limit(10).count(:id)
    @items = @want_key.transform_keys!{ |key| Item.find(key) }
  end


end
