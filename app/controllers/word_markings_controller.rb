class WordMarkingsController < ApplicationController
	
	def new
	end

	def create
		WordMarkings.create(word_marking_params)
	end

	def edit
	end

	def update
	end

	private

	def word_marking_params
		params.require(:index, :prism, :prism_id, :user, :user_id, :facet, :facet_id)
	end

end
