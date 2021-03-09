class TreatmentsController < ApplicationController
  
  def show
    @patient = Patient.find(params[:patient_id])
    @treatment = @patient.treatments.find(params[:id])
    @plan = Plan.find(@treatment.plan_id)
    @disease = Disease.find(@treatment.plan_id)
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
      render new
    end
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private
  def treatment_params1
    params.require(:treatment).permit(
      :date, :in_out_id, :disease_id, :plan_id, :course, :day, :mesuring_date, :height, :weight
    ).merge(
      patient_id: params[:patient_id], dose1: "", dose2: "", dose3: "", dose4: "", dose5: "", dose6: "", dose7: "", dose8: "",
      nk1: "", dex: "", h1blocker: "", h2blocker: "", other_medicine: "", text: "")
  end
  
  def treatment_params2
    params.require(:treatment).permit()
  end

end
