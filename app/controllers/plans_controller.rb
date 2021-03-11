class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :update, :destroy]
  before_action :search_plan, only: [:index, :search]

  def index
    @plans = Plan.all.order(:name)
  end

  def search
    @plans = @p.result.includes(:disease)
  end

  def show
    @diseases = @plan.diseases
    @disease = Disease.new
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      plan = Plan.find_by(name: @plan[:name])
      redirect_to plan_path(plan.id)
    else
      render :new
    end
  end
  
  def edit
  end

  def update
    if @plan.update(plan_params)
      redirect_to plan_path(@plan.id)
    else
      render :edit
    end
  end

  def destroy
    @plan.destroy
    redirect_to plans_path
  end

  private

  def search_plan
    @p = Plan.ransack(params[:q])
  end

  def set_plan
    @plan = Plan.find(params[:id])
  end

  def plan_params
    params.require(:plan).permit(
      :name, :period, :emetic_id, :nk1, :dex, :h1blocker, :h2blocker,
      :other_medicine, :text,
      :medicine_name1, :medicine_name2, :medicine_name3, :medicine_name4, :medicine_name5, :medicine_name6, :medicine_name7, :medicine_name8,
      :abbreviation1, :abbreviation2, :abbreviation3, :abbreviation4, :abbreviation5, :abbreviation6, :abbreviation7, :abbreviation8,
      :dose1, :dose2, :dose3, :dose4, :dose5, :dose6, :dose7, :dose8,
      :unit1_id, :unit2_id, :unit3_id, :unit4_id, :unit5_id, :unit6_id, :unit7_id, :unit8_id,
      :schedule1, :schedule2, :schedule3, :schedule4, :schedule5, :schedule6, :schedule7, :schedule8
    )
  end
end