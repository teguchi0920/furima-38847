require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザ新規登録' do
    context '新規登録できる場合'do
      it '必須項目を全て入力すれば登録できる' do
      end
    end
    context '新規登録できない場合' do
      it 'nicknameが空だと登録できない' do
      end
      it 'emailが空だと登録できない' do
      end
      it '重複したemailは登録できない' do
      end
      it 'emailに@が含まれていないと登録できない' do
      end
      it 'passwordが空だと登録できない' do
      end
      it 'passwordが6文字未満だと登録できない' do
      end
      it 'passwordが半角英字だけだと登録できない' do
      end
      it 'passwordが半角数字だけだと登録できない' do
      end
      it 'passwordに全角文字が含まれる場合は登録できない' do
      end
      it 'passwordとencrypted_passwordが一致しなければ登録できない' do
      end
      it 'last_nameが空だと登録できない' do
      end
      it 'first_nameが空だと登録できない' do
      end
      it 'last_nameが全角文字（漢字・ひらがな・カタカナ）でなければ登録できない' do
      end
      it 'first_nameが全角文字（漢字・ひらがな・カタカナ）でなければ登録できない' do
      end
      it 'last_name_kanaが空だと登録できない' do
      end
      it 'first_name_kanaが空だと登録できない' do
      end
      it 'last_name_kanaが全角カタカナでなければ登録できない' do
      end
      it 'first_name_kanaが全角カタカナでなければ登録できない' do
      end
      it 'birthdayが空だと登録できない' do
      end
    end
  end
end