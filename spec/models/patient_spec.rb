require 'rails_helper'

RSpec.describe Patient, type: :model do
  before do
    @patient = FactoryBot.build(:patient)
  end

  describe '患者新規登録' do
    context '新規登録できるとき' do
      it 'name, gender_id, birthday, textがあれば登録できる' do
        expect(@patient).to be_valid
      end
      it 'textが空でも登録できる' do
        @patient.text = nil
        expect(@patient).to be_valid
      end
    end

    context '新規登録できないとき' do
      it 'nameが空では登録できない' do
        @patient.name = nil
        @patient.valid?
        expect(@patient.errors.full_messages).to include "Name can't be blank"
      end

      it 'nameが既に登録されている場合（重複）は登録できない' do
        @patient.save
        another_patient = FactoryBot.build(:patient)
        another_patient.name = @patient.name
        another_patient.valid?
        expect(another_patient.errors.full_messages).to include "Name has already been taken"
      end

      it 'gender_idが空では登録できない' do
        @patient.gender_id = nil
        @patient.valid?
        expect(@patient.errors.full_messages).to include "Gender can't be blank"
      end

      it 'gender_idが1では登録できない' do
        @patient.gender_id = 1
        @patient.valid?
        expect(@patient.errors.full_messages).to include "Gender must be other than 1"
      end

      it 'birthdayが空では登録できない' do
        @patient.birthday = nil
        @patient.valid?
        expect(@patient.errors.full_messages).to include "Birthday can't be blank"
      end
    end
  end
end
