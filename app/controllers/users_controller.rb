class	UsersController <ApplicationController
	# def index
	# 	@users = User.all.order(:name)
	# end

	def myprofile
		@user = User.find_by(id: current_user)
	
	end


	# private 
	# 	def params
	# 		params.require(:post).permit(:title, :description, :post)
	# 	end
end