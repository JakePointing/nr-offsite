class AchievementsController < ApplicationController
  def create
    @achievement = Achievement.new(achievement_params)
    if @achievement.save
      flash[:notice] = "Success"
      redirect_back(fallback_location: root_path)
    else
      flash[:warn] = "Something went wrong"
    end
  end

  def update
    @achievement = Achievement.find(params[:id])
    if @achievement.update(achievement_params)
      flash[:notice] = "Success"
      redirect_back(fallback_location: root_path)
    else
      flash[:warn] = "Something went wrong"
    end
  end

  def destroy
    @achievement = Achievement.find(params[:id])
    @achievement.destroy
    redirect_back(fallback_location: root_path)
  end

  private 

  def achievement_params
    params.require(:achievement).permit(:description, :individual_id)
  end
end
