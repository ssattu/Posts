class PostsController < ApplicationController
  # before_action :authenticate_user!, only:[:edit, :new, :destroy]
  skip_before_action :verify_authenticity_token
  def index
    if params[:title]
  	@posts = Post.where("title ilike ?", "%#{params[:title]}%")
    else
    @posts = Post.all.order(:id)
    end
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
  	debugger
    @post = current_user.posts.new(posts_params)
  	is_validate = (posts_params[:draft] == 'draft')

    if @post.save( validate: !is_validate )
      # @post.update(draft: 'show')
  		# PostMail.new(@post).send_mail 		
  		redirect_to root_path, notice: "Post is Created Successfully"  
  	end
    # end
  end

  def show
  	@post = Post.find(params[:id])
  end

  	def destroy
  	@post = Post.find(params[:id])
		@post.destroy

		redirect_to root_path, notice: "Post is Deleted Successfully"
 	  end

    def draft_show
      @post = Post.all.order(:id).where(draft: 'draft')

    end

    def draft
      @post = current_user.posts.new(posts_params)
      @post.save!
      @post.update(draft: 'draft')
      redirect_to draft_path, notice: "Post is saved as draft Successfully"  
    end
	private 
		def posts_params
			params.require(:post).permit(:title, :description, :post, :draft)
		end

end