class GiftsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

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

  def show
    @gift = Gift.find(params[:id])
  end

  def edit
    @gift = Gift.find(params[:id])
    unless @gift.user_id == current_user.id
      redirect_to action: :index
    end
  end

  def update
    @gift = Gift.find(params[:id])
    if @gift.update(gift_params)
      redirect_to gift_path
    else
      render :edit
    end
  end

  def destroy
    @gift = Gift.find(params[:id])
    unless @gift.user_id == current_user.id
      redirect_to action: :index
    end
    @gift.destroy
    redirect_to root_path
  end

  private
  def gift_params
    params.require(:gift).permit(:title, :content, :url, :image).merge(user_id: current_user.id)
  end
  
end
