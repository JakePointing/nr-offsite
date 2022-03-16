class IndividualsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_individual, only: [ :show, :edit, :update ]
  def show
    @achievement = Achievement.new
  end

  def edit
  end

  def update
    if @individual.update(individual_params)
      flash[:notice] = "Success"
      redirect_to @individual
    else
      flash[:warn] = "something went wrong"
      render :edit
    end
  end

  private

  def set_individual
    @individual = Individual.find(params[:id])
    @achievements = @individual.achievements
  end

  def individual_params
    params.require(:individual).permit(:name, :title, :location, :description, :permission)
  end
end
