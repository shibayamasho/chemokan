class DiseasesController < ApplicationController

  def create
    @disease = Disease.new(disease_params)
    if @disease.save
      redirect_to plan_path(params[:plan_id])
    else
      render plan_path(params[:plan_id])
    end
  end

  def destroy
    @disease = Disease.find(params[:id])
    @disease.destroy
    redirect_to plan_path(params[:plan_id])
  end

  private
  def disease_params
    params.require(:disease).permit(:cancer_id, :other_id, :purpose_id) .merge(plan_id: params[:plan_id])
  end
end
