class RegimensController < ApplicationController
  before_action :set_regimen, only: [:show, :edit, :update, :destroy]

  def index
    @regimens = Regimen.all.order(:name)
  end

  def show
  end

  def new
    @regimen = Regimen.new
  end

  def create
    @regimen = Regimen.new(regimen_params)
    if @regimen.save
      regimen = Regimen.find_by(name: @regimen[:name])
      redirect_to regimen_path(regimen.id)
    else
      render :new
    end
  end
  
  def edit
  end

  def update
    if @regimen.update(regimen_params)
      redirect_to regimen_path(@regimen.id)
    else
      render :edit
    end
  end

  def destroy
    @regimen.destroy
    redirect_to regimens_path
  end

  private

  def set_regimen
    @regimen = Regimen.find(params[:id])
  end

  def regimen_params
    params.require(:regimen).permit(
      :name, :period, :emetic_id, :nk1, :dex, :h1blockler, :h2blockler
      :other_medicine, :text,
      :medicinen_name1, :medicinen_name2, :medicinen_name3, :medicinen_name4, :medicinen_name5, :medicinen_name6, :medicinen_name7, :medicinen_name8,
      :abbreviation1, :abbreviation2, :abbreviation3, :abbreviation4, :abbreviation5, :abbreviation6, :abbreviation7, :abbreviation8,
      :dose1, :dose2, :dose3, :dose4, :dose5, :dose6, :dose7, :dose8,
      :unit_id1, :unit_id2, :unit_id3, :unit_id4, :unit_id5, :unit_id6, :unit_id7, :unit_id8,
      :schedule1, :schedule2, :schedule3, :schedule4, :schedule5, :schedule6, :schedule7, :schedule8
    )
  end
end
