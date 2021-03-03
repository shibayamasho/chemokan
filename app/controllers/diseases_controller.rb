class DiseasesController < ApplicationController
  def index
    @diseases = Disease.all
  end

  def create
    disease = Disease.create(disease_params)
    redirect_to diseases_path
  end

  private
  def disease_params
    params.require(:disease).permit(:cancer_id, :other_id, :purpose_id)
  end
end
