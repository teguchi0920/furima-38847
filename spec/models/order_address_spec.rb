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
      end
      it 'post_codeに半角数字以外が含まれている場合は登録できない' do
      end
      it 'post_codeは3桁ハイフン4桁の半角数字でなければ登録できない' do
      end
      it 'item_category_idが1だと登録できない' do
      end
      it 'cityが空だと登録できない' do
      end
      it 'blockが空だと登録できない' do
      end
      it 'phone_numberが空だと登録できない' do
      end
      it 'phone_numberが10桁未満では登録できない' do
      end
      it 'phone_numberが12桁以上では登録できない' do
      end
      it 'phone_numberに半角数字以外が含まれている場合は登録できない' do
      end
      it 'userが紐付いていなければ登録できない' do
      end
      it 'itemが紐付いていなければ登録できない' do
      end
    end
  end
end
