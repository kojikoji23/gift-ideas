require 'rails_helper'

RSpec.describe Gift, type: :model do
  before do
    @gift = FactoryBot.build(:gift)
  end

  describe 'giftの保存' do
    context 'giftが保存できる場合' do
      it '必要な情報が全て存在すれば保存できる' do
        expect(@gift).to be_valid
      end
      it 'urlが空でも保存できる' do
        @gift.url = ''
        expect(@gift).to be_valid
      end
    end

    context 'giftの保存ができない場合' do
      it 'titleが空では登録できない' do
        @gift.title = ''
        @gift.valid?
        expect(@gift.errors.full_messages).to include("Title can't be blank")
      end
      it 'contentが空では登録できない' do
        @gift.content = ''
        @gift.valid?
        expect(@gift.errors.full_messages).to include("Content can't be blank")
      end
      it 'imageが空では登録できない' do
        @gift.image = nil
        @gift.valid?
        expect(@gift.errors.full_messages).to include("Image can't be blank")
      end
      it 'userが紐付いていないと保存できない' do
        @gift.user = nil
        @gift.valid?
        expect(@gift.errors.full_messages).to include('User must exist')
      end
    end
  end
end
