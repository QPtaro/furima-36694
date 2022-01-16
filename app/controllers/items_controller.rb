class ItemsController < ApplicationController
  def index
  end

  def new
   @item = Item.new
  end

  def create
    @item = Item.new(item_params)
  end

  private

  def item_params
    params.require(:item).permit(:image, :item_name, :item_description, :category_id, :condition_id, :delivery_fee_id, :prefecture_id, :delivery_time_id, :item_price, :user_id)
  end

end
