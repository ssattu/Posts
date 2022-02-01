class	UsersController <ApplicationController
	# def index
	# 	@users = User.all.order(:name)
	# end

	def myprofile
		@user = User.find_by(id: current_user)
	end

	def destroy
    @user = User.find(params[:id])
    @user.destroy ? @user.update(deleted_account = false) : @user.update(deleted_account = true)
  end


  def states
  	@country_key = CS.countries.key("#{params[:country]}")
  	@states = CS.states(@country_key)
  	# debugger
  end

  def city
  	@country_key = CS.countries.key("#{params[:country]}")
  	@state_key = CS.states(@country_key).key("#{params[:state]}")
  	@cities = CS.get(@country_key, @state_key)
  	
  end
	# private 
	# 	def params
	# 		params.require(:post).permit(:title, :description, :post)
	# 	end
end