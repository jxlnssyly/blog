class AdminController < ApplicationController
	
  before_action :signed_in_user

  def index
    @articles = Article.all
  end

  def new
  	@article = Article.new
  end

  private
  	def signed_in_user
  		redirect_to signin_url, notice: "请先登录" unless signed_in?
  	end
end
