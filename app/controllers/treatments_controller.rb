class TreatmentsController < ApplicationController
  before_action :set_treatment, only: [:show, :edit]

  def show
  end

  def new
    @patient = Patient.find(params[:patient_id])
    @treatment = Treatment.new
  end

  def create
    @treatment = Treatment.new(treatment_params1)
    if @treatment.save
      redirect_to patient_path(params[:patient_id])
    else
      @patient = Patient.find(params[:patient_id])
      render :new
    end
  end

  def edit  #投与量を編集
  end

  def edit2  #レジメンや測定を編集
    @patient = Patient.find(params[:patient_id])
    @treatment = @patient.treatments.find(params[:id])
  end

  def update  #editのupdate
    @patient = Patient.find(params[:patient_id])
    @treatment = @patient.treatments.find(params[:id])
    if @treatment.update(treatment_params2)
      redirect_to patient_treatment_path(params[:patient_id], params[:id])
    else
      render :edit
    end
  end

  def update2  #edit2のupdate
    @patient = Patient.find(params[:patient_id])
    @treatment = @patient.treatments.find(params[:id])
    if @treatment.update(treatment_params3)
      redirect_to patient_treatment_path(params[:patient_id], params[:id])
    else
      render :edit2
    end
  end

  def destroy
    @treatment = Treatment.find(params[:id])
    @treatment.destroy
    redirect_to patient_path(params[:patient_id])
  end

  private
  def set_treatment
    @patient = Patient.find(params[:patient_id])
    @treatment = @patient.treatments.find(params[:id])
    @plan = Plan.find(@treatment.plan_id)
    @disease = Disease.find(@treatment.plan_id)
    @bsa = bsa(@treatment)
    @theoretical_value1 = theoretical_value(@plan.unit1_id, @bsa, @treatment.weight, @plan.dose1)
    @theoretical_value2 = theoretical_value(@plan.unit2_id, @bsa, @treatment.weight, @plan.dose2)
    @theoretical_value3 = theoretical_value(@plan.unit3_id, @bsa, @treatment.weight, @plan.dose3)
    @theoretical_value4 = theoretical_value(@plan.unit4_id, @bsa, @treatment.weight, @plan.dose4)
    @theoretical_value5 = theoretical_value(@plan.unit5_id, @bsa, @treatment.weight, @plan.dose5)
    @theoretical_value6 = theoretical_value(@plan.unit6_id, @bsa, @treatment.weight, @plan.dose6)
    @theoretical_value7 = theoretical_value(@plan.unit7_id, @bsa, @treatment.weight, @plan.dose7)
    @theoretical_value8 = theoretical_value(@plan.unit8_id, @bsa, @treatment.weight, @plan.dose8)
  end

  def treatment_params1  #create用
    params.require(:treatment).permit(
      :date, :in_out_id, :disease_id, :plan_id, :course, :day, :mesuring_date, :height, :weight
    ).merge(
      patient_id: params[:patient_id], dose1: "", dose2: "", dose3: "", dose4: "", dose5: "", dose6: "", dose7: "", dose8: "",
      nk1: "", dex: "", h1blocker: "", h2blocker: "", other_medicine: "", text: "")
  end
  
  def treatment_params2  #edit~update用
    params.require(:treatment).permit(
      :dose1, :dose2, :dose3, :dose4, :dose5, :dose6, :dose7, :dose8,
      :nk1, :dex, :h1blocker, :h2blocker, :other_medicine, :text)
  end

  def treatment_params3  #edit2~update2用
    params.require(:treatment).permit(
      :date, :in_out_id, :disease_id, :plan_id, :course, :day, :mesuring_date, :height, :weight)
  end

  def bsa(treatment)
    (0.007184 * (treatment.height.truncate(2) ** 0.725) * (treatment.weight.truncate(2) **0.425)).round(2)
  end

  def theoretical_value(unit, bsa, weight, dose)
    if unit == 2 || unit == 7
      (bsa * dose).round(2)
    elsif unit == 3
      (weight * dose).round(2)
    elsif unit == 4 || unit == 5 || unit == 8
      dose1
    else
      "--"
    end
  end

end
