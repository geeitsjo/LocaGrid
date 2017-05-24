class ReactionsController < ApplicationController
	def create
		idea = Idea.find(params[:idea_id])
		idea.reactions.create(sentiment: params[:sentiment])
		redirect_to idea
	end
end