require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'commentの保存' do
    context 'commentが保存できる場合' do
      it 'commentが入力されていれば保存できる' do
        expect(@comment).to be_valid
      end
    end

    context 'commentの保存ができない場合' do
      it 'commentが空では登録できない' do
        @comment.text = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Text can't be blank")
      end
      it 'userが紐付いていないと保存できない' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('User must exist')
      end
      it 'giftが紐付いていないと保存できない' do
        @comment.gift = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Gift must exist')
      end
    end
  end
end
