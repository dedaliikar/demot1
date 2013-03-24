class VotesController < ApplicationController
  before_filter :authenticate_user!
  def show
  	@demot=Demot.find(params[:id])
  	unless @demot.voters.include?(current_user)
  		Vote.create(user_id: current_user.id, demot_id: @demot.id)
    end
  	redirect_to demot_path(@demot)
  end
end
