require 'rails_helper'

RSpec.describe Plan, type: :model do
  before do
    @plan = FactoryBot.build(:plan)
  end

  describe 'レジメン新規登録' do
    context '新規登録できるとき' do
      it '正しく入力すれば登録できる' do
        expect(@plan).to be_valid
      end
      
      it 'nk1が空でも登録できる' do
        @plan.nk1 = nil
        expect(@plan).to be_valid
      end

      it 'dexが空でも登録できる' do
        @plan.dex = nil
        expect(@plan).to be_valid
      end

      it 'h1blockerが空でも登録できる' do
        @plan.h1blocker = nil
        expect(@plan).to be_valid
      end

      it 'h2blockerが空でも登録できる' do
        @plan.h2blocker = nil
        expect(@plan).to be_valid
      end

      it 'other_medicineが空でも登録できる' do
        @plan.other_medicine = nil
        expect(@plan).to be_valid
      end

      it 'textが空でも登録できる' do
        @plan.text = nil
        expect(@plan).to be_valid
      end

      it 'medicine_name2が空でも登録できる' do
        @plan.medicine_name2 = nil
        expect(@plan).to be_valid
      end

      it 'medicine_name3が空でも登録できる' do
        @plan.medicine_name3 = nil
        expect(@plan).to be_valid
      end

      it 'medicine_name4が空でも登録できる' do
        @plan.medicine_name4 = nil
        expect(@plan).to be_valid
      end

      it 'medicine_name5が空でも登録できる' do
        @plan.medicine_name5 = nil
        expect(@plan).to be_valid
      end

      it 'medicine_name6が空でも登録できる' do
        @plan.medicine_name6 = nil
        expect(@plan).to be_valid
      end

      it 'medicine_name7が空でも登録できる' do
        @plan.medicine_name7 = nil
        expect(@plan).to be_valid
      end

      it 'medicine_name8が空でも登録できる' do
        @plan.medicine_name8 = nil
        expect(@plan).to be_valid
      end

      it 'abbreviation2が空でも登録できる' do
        @plan.abbreviation2 = nil
        expect(@plan).to be_valid
      end

      it 'abbreviation3が空でも登録できる' do
        @plan.abbreviation3 = nil
        expect(@plan).to be_valid
      end

      it 'abbreviation4が空でも登録できる' do
        @plan.abbreviation4 = nil
        expect(@plan).to be_valid
      end

      it 'abbreviation5が空でも登録できる' do
        @plan.abbreviation5 = nil
        expect(@plan).to be_valid
      end

      it 'abbreviation6が空でも登録できる' do
        @plan.abbreviation6 = nil
        expect(@plan).to be_valid
      end

      it 'abbreviation7が空でも登録できる' do
        @plan.abbreviation7 = nil
        expect(@plan).to be_valid
      end

      it 'abbreviation8が空でも登録できる' do
        @plan.abbreviation8 = nil
        expect(@plan).to be_valid
      end

      it 'dose2が空でも登録できる' do
        @plan.dose2 = nil
        expect(@plan).to be_valid
      end

      it 'dose3が空でも登録できる' do
        @plan.dose3 = nil
        expect(@plan).to be_valid
      end

      it 'dose4が空でも登録できる' do
        @plan.dose4 = nil
        expect(@plan).to be_valid
      end

      it 'dose5が空でも登録できる' do
        @plan.dose5 = nil
        expect(@plan).to be_valid
      end

      it 'dose6が空でも登録できる' do
        @plan.dose6 = nil
        expect(@plan).to be_valid
      end

      it 'dose7が空でも登録できる' do
        @plan.dose7 = nil
        expect(@plan).to be_valid
      end

      it 'dose8が空でも登録できる' do
        @plan.dose8 = nil
        expect(@plan).to be_valid
      end

      it 'unit2_idが1でも登録できる' do
        @plan.unit2_id = 1
        expect(@plan).to be_valid
      end

      it 'unit3_idが1でも登録できる' do
        @plan.unit3_id = 1
        expect(@plan).to be_valid
      end

      it 'unit4_idが1でも登録できる' do
        @plan.unit4_id = 1
        expect(@plan).to be_valid
      end

      it 'unit5_idが1でも登録できる' do
        @plan.unit5_id = 1
        expect(@plan).to be_valid
      end

      it 'unit6_idが1でも登録できる' do
        @plan.unit6_id = 1
        expect(@plan).to be_valid
      end

      it 'unit7_idが1でも登録できる' do
        @plan.unit7_id = 1
        expect(@plan).to be_valid
      end

      it 'unit8_idが1でも登録できる' do
        @plan.unit8_id = 1
        expect(@plan).to be_valid
      end

      it 'schedule2が空でも登録できる' do
        @plan.schedule2 = nil
        expect(@plan).to be_valid
      end

      it 'schedule3が空でも登録できる' do
        @plan.schedule3 = nil
        expect(@plan).to be_valid
      end

      it 'schedule4が空でも登録できる' do
        @plan.schedule4 = nil
        expect(@plan).to be_valid
      end

      it 'schedule5が空でも登録できる' do
        @plan.schedule5 = nil
        expect(@plan).to be_valid
      end

      it 'schedule6が空でも登録できる' do
        @plan.schedule6 = nil
        expect(@plan).to be_valid
      end

      it 'schedule7が空でも登録できる' do
        @plan.schedule7 = nil
        expect(@plan).to be_valid
      end

      it 'schedule8が空でも登録できる' do
        @plan.schedule8 = nil
        expect(@plan).to be_valid
      end
    end

    context '新規登録できないとき' do
      it 'nameが空では登録できない' do
        @plan.name = nil
        @plan.valid?
        expect(@plan.errors.full_messages).to include "Name can't be blank"
      end

      it 'periodが空では登録できない' do
        @plan.period = nil
        @plan.valid?
        expect(@plan.errors.full_messages).to include "Period can't be blank"
      end

      it 'emetic_idが空では登録できない' do
        @plan.emetic_id = nil
        @plan.valid?
        expect(@plan.errors.full_messages).to include "Emetic can't be blank"
      end

      it 'emetic_idが1では登録できない' do
        @plan.emetic_id = 1
        @plan.valid?
        expect(@plan.errors.full_messages).to include "Emetic must be other than 1"
      end

      it 'medicine_name1が空では登録できない' do
        @plan.medicine_name1 = nil
        @plan.valid?
        expect(@plan.errors.full_messages).to include "Medicine name1 can't be blank"
      end

      it 'abbreviation1が空では登録できない' do
        @plan.abbreviation1 = nil
        @plan.valid?
        expect(@plan.errors.full_messages).to include "Abbreviation1 can't be blank"
      end

      it 'dose1が空では登録できない' do
        @plan.dose1 = nil
        @plan.valid?
        expect(@plan.errors.full_messages).to include "Dose1 can't be blank"
      end

      it 'unit1_idが空では登録できない' do
        @plan.unit1_id = nil
        @plan.valid?
        expect(@plan.errors.full_messages).to include "Unit1 can't be blank"
      end

      it 'unit1_idが1では登録できない' do
        @plan.unit1_id = 1
        @plan.valid?
        expect(@plan.errors.full_messages).to include "Unit1 must be other than 1"
      end

      it 'schedule1が空では登録できない' do
        @plan.schedule1 = nil
        @plan.valid?
        expect(@plan.errors.full_messages).to include "Schedule1 can't be blank"
      end
    end
  end
end
