require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'name,uil,email,password,password_confirmationがあれば新規登録できる' do
        expect(@user).to be_valid
      end

      it 'passwordとpassword_confirmationが6文字以上の半角英数字あれば登録できる' do
        @user.password = '123456'
        @user.password_confirmation = @user.password
        expect(@user).to be_valid
      end
    end

    context '新規登録できないとき' do
      it 'uidが空では登録できない' do
        @user.uid = nil
        @user.valid?
        expect(@user.errors.full_messages).to include "Uid can't be blank"
      end

      it 'emailが空では登録できない' do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include "Email can't be blank"
      end

      it 'passwordが空では登録できない' do
        @user.password = nil
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank"
      end

      it '重複したemailが存在すれば登録できないこと' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include 'Email has already been taken'
      end

      it 'emailは、@を含まないと登録できないこと' do
        @user.email = 'abcdefg'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Email is invalid'
      end

      it 'パスワードは、５文字以下では登録できないこと' do
        @user.password = '12345'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Password is too short (minimum is 6 characters)'
      end

      it 'パスワードは、全角での入力では登録できないこと' do
        @user.password = '１２３ａｂｃ'
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include 'Password is invalid'
      end

      it 'パスワードとパスワード（確認用）は、値の一致が必須であること' do
        @user.password = '123456'
        @user.password_confirmation = '1234567'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end

      it 'パスワードは、確認用を含めて2回入力すること(password_confirmationが空では登録できない)' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end
    end
  end
end
