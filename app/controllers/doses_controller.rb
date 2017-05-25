class DosesController < ApplicationController
  before_action :set_dose, only: [:create, :destroy]
  def new
    @dose = Dose.new
  end

  def create
  end

  def destroy
  end

  private

  def set_dose
    @dose = Dose.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description)
  end
end
