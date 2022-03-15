class AchievementsController < ApplicationController
  def create
    @achievement = Achievement.new(achievement_params)
    if @achievement.save
      flash[:notice] = "Success"
      redirect_to @achievement.individual
    else
      flash[:warn] = "Something went wrong"
    end
  end

  def update
  end

  private 

  def achievement_params
    params.require(:achievement).permit(:description, :individual_id)
  end
end
