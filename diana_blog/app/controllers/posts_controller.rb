class	PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
	@post = Post.new
	end

	def create
		Post.create(post_params)
		redirect_to posts_path
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		
	end

	def update
		post = Post.find(params[:id])
		post.update(post_params)
		redirect_to posts_path
	end

	def destroy
		post = Post.find(params[:id])
		post.destroy
		redirect_to posts_path
	end

	def yoda
		content = params[:post][:content]
		yoda_speak = HTTPary.get("https://yoda.p.mashape.com/yoda?sentence=#{content}",
								  headers:{
								    "X-Mashape-Key" => "0dknP6VtqYmshfI1FFzN5e1I7AvJp1ToDgnjsnp1HXrqvaLNmp",
								    "Accept" => "text/plain"
								  })
		@yoda_post = params[:post]
		@yoda_post[:content] = yoda_speak
		render :yoda
	end

	private

	def post_params
		params.require(:post).permit(:title, :content, :image_url, :author_id)
		
	end
end
