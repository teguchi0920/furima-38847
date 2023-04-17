require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  before do
    user = FactoryBot.create(:user)
    item = FactoryBot.create(:item)
    @order = FactoryBot.build(:order_address, user_id: user.id, item_id: item.id)
  end

  describe '購入機能' do
    context '商品が購入できる場合' do
      it '必須項目を全て入力すれば登録できる' do
        expect(@order).to be_valid
      end
    end
    context '商品が購入できない場合' do
      it 'post_codeが空では登録できない' do
        @order.post_code = ''
        @order.valid?
        expect(@order.errors.full_messages).to include("Post code can't be blank")
      end
      it 'post_codeに半角数字以外が含まれている場合は登録できない' do
        @order.post_code = '１２３ー４５６７'
        @order.valid?
        expect(@order.errors.full_messages).to include("Post code is invalid. Include hyphen(-)")
      end
      it 'post_codeは3桁ハイフン4桁の半角数字でなければ登録できない' do
        @order.post_code = '1234-567'
        @order.valid?
        expect(@order.errors.full_messages).to include("Post code is invalid. Include hyphen(-)")
      end
      it 'prefecture_idが1だと登録できない' do
        @order.prefecture_id = 1
        @order.valid?
        expect(@order.errors.full_messages).to include("Prefecture can't be blank")
      end
      it 'cityが空だと登録できない' do
        @order.city = ''
        @order.valid?
        expect(@order.errors.full_messages).to include("City can't be blank")
      end
      it 'blockが空だと登録できない' do
        @order.block = ''
        @order.valid?
        expect(@order.errors.full_messages).to include("Block can't be blank")
      end
      it 'phone_numberが空だと登録できない' do
        @order.phone_number = ''
        @order.valid?
        expect(@order.errors.full_messages).to include("Phone number can't be blank")
      end
      it 'phone_numberが10桁未満では登録できない' do
        @order.phone_number = '123456789'
        @order.valid?
        expect(@order.errors.full_messages).to include("Phone number is invalid. Input only number")
      end
      it 'phone_numberが12桁以上では登録できない' do
        @order.phone_number = '123456789101'
        @order.valid?
        expect(@order.errors.full_messages).to include("Phone number is invalid. Input only number")
      end
      it 'phone_numberに半角数字以外が含まれている場合は登録できない' do
        @order.phone_number = '１２３４５６７８９０'
        @order.valid?
        expect(@order.errors.full_messages).to include("Phone number is invalid. Input only number")
      end
      it 'userが紐付いていなければ登録できない' do
        @order.user_id = nil
        @order.valid?
        expect(@order.errors.full_messages).to include("User can't be blank")
      end
      it 'itemが紐付いていなければ登録できない' do
        @order.item_id = nil
        @order.valid?
        expect(@order.errors.full_messages).to include("Item can't be blank")
      end
      it 'tokenが空では登録できない' do
        @order.token = ''
        @order.valid?
        expect(@order.errors.full_messages).to include("Token can't be blank")
      end
    end
  end
end
