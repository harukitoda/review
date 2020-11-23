class ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :redirect_to_root_path, only: [:edit, :update]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
  end

  def create
    @item = Item.new(item_params)
  end

  def destroy
      @item.destroy
      redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :explanation, :category_id, :status_id, :fee_id,
                                 :prefecture_id, :schedule_id, :price).merge(user_id: current_user.id)
  end

  def redirect_to_root_path
    redirect_to root_path if (@item.user.id != current_user.id) || @item.order.present?
  end
end
