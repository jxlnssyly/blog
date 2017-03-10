class IndexController < ApplicationController
	def index
		@articles = Article.order("created_at DESC").limit(6)
	end

	def about
	end


end
