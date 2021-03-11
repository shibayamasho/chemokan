class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]
  before_action :search_patient, only: [:index, :search]

  def index
    @patients = Patient.all.order('name ASC')
  end

  def search
    @results = @q.result.order(:name)
  end

  def show
    @treatments = @patient.treatments.includes(:plan).order(:date)
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      patient2 = Patient.find_by(name: @patient[:name])
      redirect_to patient_path(patient2.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @patient.update(patient_params)
      redirect_to patient_path(@patient.id)
    else
      render :edit
    end
  end

  def destroy
    @patient.destroy
    redirect_to patients_path
  end

  private

  def search_patient
    @q = Patient.ransack(params[:q])
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :gender_id, :birthday, :text)
  end
end
