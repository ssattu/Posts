module PostsHelper
	def user_name(post)
		post.present? ? "#{(post.user.name).capitalize!}" : '' 
	end

end
