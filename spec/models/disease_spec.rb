require 'rails_helper'

RSpec.describe Disease, type: :model do
  before do
    @disease = FactoryBot.build(:disease)
  end

  describe '疾患新規登録' do
      context '新規登録できるとき' do
        it 'cancer_id, other_id, purpose_idがあれば登録できる' do
          expect(@disease).to be_valid
        end

        it 'other_idが1でも登録できる' do
          @disease.other_id = 1
          expect(@disease).to be_valid
        end
      end

      context '新規登録できないとき' do
        it 'cancer_idが空では登録できない' do
          @disease.cancer_id = nil
          @disease.valid?
          expect(@disease.errors.full_messages).to include "Cancer can't be blank"
        end

        it 'cancer_idが1では登録できない' do
          @disease.cancer_id = 1
          @disease.valid?
          expect(@disease.errors.full_messages).to include "Cancer must be other than 1"
        end

        it 'other_idが空では登録できない' do
          @disease.other_id = nil
          @disease.valid?
          expect(@disease.errors.full_messages).to include "Other can't be blank"
        end

        it 'purpose_idが空では登録できない' do
          @disease.purpose_id = nil
          @disease.valid?
          expect(@disease.errors.full_messages).to include "Purpose can't be blank"
        end

        it 'purpose_idが1では登録できない' do
          @disease.purpose_id = 1
          @disease.valid?
          expect(@disease.errors.full_messages).to include "Purpose must be other than 1"
        end
      end
  end
end
