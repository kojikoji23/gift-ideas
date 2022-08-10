class GiftsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_gift, only: [:show, :edit, :update, :destroy]
  before_action :set_id, only: [:edit, :destroy]

  def index
    @gifts = Gift.order('created_at DESC')
  end

  def new
    @gift_form = GiftForm.new
  end

  def create
    @gift_form = GiftForm.new(gift_form_params)
    if @gift_form.valid?
       @gift_form.save
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
    gift_attributes = @gift.attributes
    @gift_form = GiftForm.new(gift_attributes)
    @gift_form.scene_id = @gift.tags.first.scene_id
    @gift_form.age_id = @gift.tags&.first&.age_id
    @gift_form.gender_id = @gift.tags&.first&.gender_id
    @gift_form.price_id = @gift.tags&.first&.price_id
  end

  def update
    @gift_form = GiftForm.new(gift_form_params)

    @gift_form.image ||= @gift.image.blob

    if @gift_form.valid?
      @gift_form.update(gift_form_params, @gift)
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
  def gift_form_params
    params.require(:gift_form).permit(:title, :content, :url, :image, :age_id, :gender_id, :scene_id, :price_id).merge(user_id: current_user.id)
  end
  
end
