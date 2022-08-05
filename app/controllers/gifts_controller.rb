class GiftsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @gifts = Gift.order('created_at DESC')
  end

  def new
    @gift = Gift.new
  end

  def create
    @gift = Gift.new(gift_params)
    if @gift.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def gift_params
    params.require(:gift).permit(:title, :content, :url, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  
end
