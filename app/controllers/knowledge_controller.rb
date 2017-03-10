class KnowledgeController < ApplicationController
  def index
  	getTimelineArticles(params[:timeline])
  end

  def show
  end

  private 
  	def getTimelineArticles(timeline)

  		if timeline.to_s.empty?
  			@articles = Article.all()
  		else
  			@articles = Article.where(:timeline => timeline)
  		end
  		
  	end
end
