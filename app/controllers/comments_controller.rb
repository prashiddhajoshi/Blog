class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    if @comment.save
      flash[:notice] = "Your comment was Posted Successfully!"
      redirect_to post_url(@post)
    else
      flash[:notice] = "Your comment could not be posted!"
      render "comment"
    end

  end
end
