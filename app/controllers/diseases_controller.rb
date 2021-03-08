class DiseasesController < ApplicationController

  def create
    @disease = Disease.new(disease_params)
    if @disease.save
      redirect_to plan_path(@plan.id)
    else
      render plan_path(@plan.id)
    end
  end

  def destroy
    @disease = Disease.find(params[:id])
    @disease.destroy
    redirect_to plan_path(@plan.id)
  end

  private
  def disease_params
    params.require(:disease).permit(:cancer_id, :other_id, :purpose_id).merge(plan_id: @plan.id)
  end
end
