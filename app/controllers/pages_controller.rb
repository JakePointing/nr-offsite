class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @individual = @individual = Individual.find(params[:user_id])
  end

  def list
    @individuals = Individual.all
  end
end
