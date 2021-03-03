class DiseasesController < ApplicationController
  before_action :set_disease, only: [:edit, :update, :destroy]

  def index
    @diseases = Disease.all.order(:cancer_id, :other_id, :purpose_id)
    @disease = Disease.new
  end

  def create
    @disease = Disease.new(disease_params)
    if @disease.save
      redirect_to diseases_path
    else
      @diseases = Disease.all.order(:cancer_id, :other_id, :purpose_id)
      render :index
    end
  end

  def edit
  end

  def update
    if @disease.update(disease_params)
      redirect_to diseases_path
    else
      render :edit
    end
  end

  def destroy
    @disease.destroy
    redirect_to diseases_path
  end


  private

  def set_disease
    @disease = Disease.find(params[:id])
  end

  def disease_params
    params.require(:disease).permit(:cancer_id, :other_id, :purpose_id)
  end
end
