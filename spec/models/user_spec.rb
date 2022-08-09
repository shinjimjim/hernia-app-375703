require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '内容に問題がない場合' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@user).to be_valid
      end
    end

    context '内容に問題がある場合' do
      it 'nameが空では登録できない' do
        @user.name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Name が入力されていません。")
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("メールアドレス が入力されていません。")
      end
      it 'すでに登録されたemailと同じだと保存できないこと' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("メールアドレス は既に使用されています。")
      end
      it '@が含まれないemailだと保存できないこと' do
        @user.email = 'test'
        @user.valid?
        expect(@user.errors.full_messages).to include("メールアドレス は有効でありません。")
      end
      it 'passwordが空だと保存できないこと' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード が入力されていません。")
      end
      it 'passwordが5文字以下だと保存できないこと' do
        @user.password = '00000'
        @user.password_confirmation = '00000'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード は6文字以上に設定して下さい。")
      end
      it 'passwordが半角数字のみでは保存できないこと' do
        @user.password = '000000'
        @user.password_confirmation = '000000'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード は有効でありません。")
      end
      it 'passwordが半角英字のみでは保存できないこと' do
        @user.password = 'aaaaaa'
        @user.password_confirmation = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード は有効でありません。")
      end
      it 'passwordが全角では保存できないこと' do
        @user.password = '１１１ａａａ'
        @user.password_confirmation = '１１１ａａａ'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード は有効でありません。")
      end
      it 'passwordとpassword_confirmationが同じ値でないと保存できないこと' do
        @user.password = '123456'
        @user.password_confirmation = '1234567'
        @user.valid?
        expect(@user.errors.full_messages).to include("確認用パスワード が内容とあっていません。")
      end
    end
  end
end
