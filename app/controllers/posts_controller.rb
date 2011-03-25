class PostsController < ApplicationController

  before_filter :filter_by_date, :only => :index

  def index
    @posts = Post.show_all
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url
  end

  def update
    @post = Post.find(params[:id])
      if @post.update_attributes(params[:post])
        if @post.publish==true
          redirect_to(@post, :notice => 'Your Blog was successfully updated.')
          else
            redirect_to posts_url
          end
      else
        render :action => "edit"
      end
  end

  def create
    @post = Post.new (params[:post])
    @post.posted_time = Time.now

    if @post.save
      flash[:notice] = "Your blog Posted Successfully!"
      redirect_to posts_url
    else
      flash[:notice] = "Your blog could not be posted!"
      render "new"
    end
  end

  def like
    @post = Post.find(params[:post_id])
    @post.no_of_likes = @post.no_of_likes + 1
    if @post.update_attributes(params[:post])
        redirect_to(@post, :notice => 'You Liked the post.')
    end
  end

  private

  def filter_by_date
    @posts = Post.all
    @posts.each do |p|
      if ((Time.now.day - p.posted_time.day) > 5)
        p.destroy
      end
    end
  end
end
