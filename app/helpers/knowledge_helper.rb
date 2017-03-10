module KnowledgeHelper

	def timelines()
		@group = Article.all.group_by{|a| a.timeline}
		@timelines = @group.keys
  end
  
end
