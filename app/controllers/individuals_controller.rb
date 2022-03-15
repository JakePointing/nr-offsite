class IndividualsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]
  def show
    @individual = Individual.find(params[:id])

  end
end
