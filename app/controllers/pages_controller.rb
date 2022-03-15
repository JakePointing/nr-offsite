class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @individuals = Individual.all
  end

  def list
    @individuals = Individual.all
  end
end
