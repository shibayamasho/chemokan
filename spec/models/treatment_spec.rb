require 'rails_helper'

RSpec.describe Treatment, type: :model do
  before do
    @plan = FactoryBot.create(:plan)
    @disease = FactoryBot.create(:disease, plan_id: @plan.id)
    @patient = FactoryBot.create(:patient)
    @treatment = FactoryBot.build(:treatment, plan_id: @plan.id, disease_id: @disease.id, patient_id: @patient.id)
    sleep(1)
  end

  describe '治療歴 新規登録' do
    context '新規登録できるとき' do
      it '正しく入力があれば登録できる' do
        expect(@treatment).to be_valid
      end
      
      it "dose1が空でも登録できる" do
        @treatment.dose1 = nil
        expect(@treatment).to be_valid
      end
      
      it "dose2が空でも登録できる" do
        @treatment.dose2 = nil
        expect(@treatment).to be_valid
      end

      it "dose3が空でも登録できる" do
        @treatment.dose3 = nil
        expect(@treatment).to be_valid
      end

      it "dose4が空でも登録できる" do
        @treatment.dose4 = nil
        expect(@treatment).to be_valid
      end

      it "dose5が空でも登録できる" do
        @treatment.dose5 = nil
        expect(@treatment).to be_valid
      end

      it "dose6が空でも登録できる" do
        @treatment.dose6 = nil
        expect(@treatment).to be_valid
      end

      it "dose7が空でも登録できる" do
        @treatment.dose7 = nil
        expect(@treatment).to be_valid
      end

      it "dose8が空でも登録できる" do
        @treatment.dose8 = nil
        expect(@treatment).to be_valid
      end

      it "nk1が空でも登録できる" do
        @treatment.nk1 = nil
        expect(@treatment).to be_valid
      end

      it "dexが空でも登録できる" do
        @treatment.dex = nil
        expect(@treatment).to be_valid
      end

      it "h1blockerが空でも登録できる" do
        @treatment.h1blocker = nil
        expect(@treatment).to be_valid
      end

      it "h2blockerが空でも登録できる" do
        @treatment.h2blocker = nil
        expect(@treatment).to be_valid
      end

      it "other_medicineが空でも登録できる" do
        @treatment.other_medicine = nil
        expect(@treatment).to be_valid
      end

      it "texが空でも登録できる" do
        @treatment.text = nil
        expect(@treatment).to be_valid
      end
    end

    context '新規登録できないとき' do
      it 'date(治療日)が空では登録できない' do
        @treatment.date = nil
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Date can't be blank"
      end

      it 'in_out_id(入院外来)が空では登録できない' do
        @treatment.in_out_id = nil
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "In out can't be blank"
      end

      it 'in_out_id(入院外来)が1では登録できない' do
        @treatment.in_out_id = 1
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "In out must be other than 1"
      end

      it 'patient_idが空では登録できない' do
        @treatment.patient_id = nil
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Patient must exist"
      end

      it 'disease_id(疾患)が空では登録できない' do
        @treatment.disease_id = nil
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Disease must exist"
      end

      it 'plan_id(レジメン)が空では登録できない' do
        @treatment.plan_id = nil
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Plan must exist"
      end

      it 'course(コース数)が空では登録できない' do
        @treatment.course = nil
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Course can't be blank"
      end

      it 'course(コース数)が全角では登録できない' do
        @treatment.course = "１"
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Course is not a number"
      end

      it 'day(コース内日数)が空では登録できない' do
        @treatment.day = nil
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Day can't be blank"
      end

      it 'day(コース内日数)が全角では登録できない' do
        @treatment.day = "１"
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Day is not a number"
      end

      it 'mesuring_date(測定日)が空では登録できない' do
        @treatment.mesuring_date = nil
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Mesuring date can't be blank"
      end

      it 'height(身長)が空では登録できない' do
        @treatment.height = nil
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Height can't be blank"
      end

      it 'height(身長)が全角では登録できない' do
        @treatment.height = "１７０"
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Height is not a number"
      end

      it 'weight(体重)が空では登録できない' do
        @treatment.weight = nil
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Weight can't be blank"
      end

      it 'weight(体重)が全角では登録できない' do
        @treatment.weight = "６０"
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Weight is not a number"
      end

      it 'dose1が全角では登録できない' do
        @treatment.dose1 = "６０"
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Dose1 is not a number"
      end

      it 'dose2が全角では登録できない' do
        @treatment.dose2 = "６０"
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Dose2 is not a number"
      end

      it 'dose3が全角では登録できない' do
        @treatment.dose3 = "６０"
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Dose3 is not a number"
      end

      it 'dose4が全角では登録できない' do
        @treatment.dose4 = "６０"
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Dose4 is not a number"
      end

      it 'dose5が全角では登録できない' do
        @treatment.dose5 = "６０"
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Dose5 is not a number"
      end

      it 'dose6が全角では登録できない' do
        @treatment.dose6 = "６０"
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Dose6 is not a number"
      end

      it 'dose7が全角では登録できない' do
        @treatment.dose7 = "６０"
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Dose7 is not a number"
      end

      it 'dose8が全角では登録できない' do
        @treatment.dose8 = "６０"
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Dose8 is not a number"
      end

      it 'courseが小数を含むと登録できない' do
        @treatment.course = 1.5
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Course must be an integer"
      end

      it 'dayが小数を含むと登録できない' do
        @treatment.day = 1.5
        @treatment.valid?
        expect(@treatment.errors.full_messages).to include "Day must be an integer"
      end
    end
  end
end