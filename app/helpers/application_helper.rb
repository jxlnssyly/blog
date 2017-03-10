module ApplicationHelper

	def full_title(page_title)
		base_title = "廖延个人博客 - 一个iOS开发工程师的个人博客网站"

		page_title.empty? ? base_title : "#{base_title} | #{page_title}" 
	end
end
