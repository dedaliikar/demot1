class TopController < ApplicationController
	def index
		@demots= Demot.published.order('votes_count desc').page params[:page]
		
  end
end
