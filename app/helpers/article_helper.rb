module ArticleHelper

	def latest_article
		@articles = Article.order("created_at DESC").limit(9)
	end

	def add_visit(article)
		num = article.visit + 1
		article.update_attributes(:visit=>num)
	end

	def higher_visit
		@higher_visits = Article.order("visit DESC").limit(9)
	end

	def delete_markdown(str)
		str.delete("*").delete("`").delete(">").delete("_")
	end

end
