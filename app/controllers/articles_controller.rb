class ArticlesController < ApplicationController
  before_action :signed_in_user, only: [:create, :edit, :update]
  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.name = current_user.name
    if @article.save 
        flash[:success] = "发布成功"
        redirect_to root_path
    else 
        render new_article_path
    end
  end

  def show
      @article = Article.find_by(id: params[:id])
  end

  def edit
    @article = Article.find(params[:id])
    render 'new', article: @article
  end

  def update
    @article = Article.find(params[:id])
    
    if @article.update(article_params)
      redirect_to admin_path
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to admin_path
  end

  private 

    def article_params
        params.require(:article).permit(:title, :content, :keyword)
    end

    def signed_in_user
      redirect_to signin_url, notice: "请先登录" unless signed_in?
    end
end
