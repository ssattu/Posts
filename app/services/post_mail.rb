class PostMail
	def initialize(post)
		@post = post
	end
	def send_mail()
		PostMailer.new_post_added(@post).deliver_now
	end
end