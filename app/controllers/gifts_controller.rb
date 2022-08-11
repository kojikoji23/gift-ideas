class GiftsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_gift, only: [:show, :edit, :update, :destroy]
  before_action :set_id, only: [:edit, :destroy]

  def index
    if params[:scene_id]
      @category = Scene.find(params[:scene_id])       
      @gifts = @category.gifts.order(created_at: :desc).all
    else
      @gifts = Gift.order(created_at: :desc).all
    end
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
    @comment = Comment.new
    @comments = @gift.comments.includes(:user)
  end

  def edit
  end

  def update
    if @gift.update(gift_params)
      redirect_to gift_path
    else
      render :edit
    end
  end

  def destroy
    @gift.destroy
    redirect_to root_path
  end

  def set_gift
    @gift = Gift.find(params[:id])
  end

  def set_id
    redirect_to root_path if @gift.user_id != current_user.id
  end

  private
  def gift_params
    params.require(:gift).permit(:title, :content, :url, :image, :price_id, :gender_id, :age_id, :scene_id).merge(user_id: current_user.id)
  end
  
end
