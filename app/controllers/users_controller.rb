class	UsersController <ApplicationController
	

	def index
		@users = User.all.order(:name)
	end

	def show
		@user = User.find(params[:id])
	end


	# def myprofile
	# 	@user = User.find_by(id: current_user)
	# end

	# def destroy
	# 	if (user_signed_in? && current_user.is_admin);
	# 	 	@user = User.find(params[:id])
 #    	@user.update(status:'inactive')
 #    else 
 #     	@user = User.find(current_user[:id])
 #    	@user.update(status:'inactive')
 #    	redirect_to destroy_user_session_path
 #   	end
 #  end

 #  def activate
	# 	 	@user = User.find(params[:id])
 #    	@user.update(status:'active')
 #    	# debugger

 #    	redirect_to user_profile_path
 #  end


 #  def states
 #  	@country_key = CS.countries.key("#{params[:country]}")
 #  	@states = CS.states(@country_key)
 #  	# debugger
 #  end

 #  def city
 #  	@country_key = CS.countries.key("#{params[:country]}")
 #  	@state_key = CS.states(@country_key).key("#{params[:state]}")
 #  	@cities = CS.get(@country_key, @state_key)
  	
  end
	private 
		def params
			params.require(:post).permit(:title, :description, :post)
		end
end