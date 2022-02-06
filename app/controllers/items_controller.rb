class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
    unless user_signed_in?
      redirect_to  new_user_registration_path
    end
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :item_name, :item_description, :category_id, :condition_id, :delivery_fee_id,
                                 :prefecture_id, :delivery_time_id, :item_price).merge(user_id: current_user.id)
  end
end
