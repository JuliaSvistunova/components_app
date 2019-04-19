require_dependency "posts/application_controller"

module Posts
  class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy, :create_comment]

    def index
      @posts = Post.all
    end

    def show
    end

    def new
      @post = Post.new
    end

    def edit
    end

    def create
      @post = Post.new(post_params)

      if @post.save
        redirect_to @post, notice: 'Post was successfully created.'
      else
        render :new
      end
    end

    def create_comment
      @comment = @post.comments.create(comment_params)
      flash[:notice] = "Comment has been created!"
      render :show
    end
    
    def update
      if @post.update(post_params)
        redirect_to @post, notice: 'Post was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @post.destroy
      redirect_to posts_url, notice: 'Post was successfully destroyed.'
    end

    
    private
      def set_post
        @post = Post.find(params[:id])
      end

      def post_params
        params.require(:post).permit(:title, :text)
      end

    def comment_params
      params.require(:comment).permit(:text)
    end
  end
end
