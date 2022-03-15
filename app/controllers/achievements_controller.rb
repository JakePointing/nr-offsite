class AchievementsController < ApplicationController
  def create
    @achievement = Achievement.new(achievement_params)
    if @achievement.save
      flash[:notice] = "Success"
    else
      flash[:warn] = "Success"
      render :form
    end
  end

  def update
  end

  private 

  def achievement_params
    params.require(:acheivement).permit(:description)
  end
end
