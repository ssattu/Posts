class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def edit
  	@action = 'edit'
  	@post = Post.find(params[:id])

  end

  def update
  	@post = Post.find(params[:id])
  	
  	if @post.update(posts_params) 
  		redirect_to root_path, notice: "Post is Updated Successfully"
  	else
  		render 'edit'
  	end

  end

  def new
  	@action = 'new'
  	@post = Post.new
  end

  def create
  	@post = Post.new(posts_params)
  	if @post.save
  		PostMail.new(@post).send_mail 		
  		redirect_to root_path, notice: "Post is Created Successfully"
    else
  
  	end
  end

  def show
  	@post = Post.find(params[:id])
  end

  	def destroy
  	@post = Post.find(params[:id])
		@post.destroy

		redirect_to root_path, notice: "Post is Deleted Successfully"
  
 	end

	private 
		def posts_params
			params.require(:post).permit(:title, :description, :user_id)
		end

end