class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_url
  end

  def create
    @blog = Blog.new (params[:blog])
    @blog.time = Time.now
    if @blog.save
      flash[:notice] = "Blog Posted Successfully!"
      redirect_to blogs_url
    else
      flash[:notice] = "Blog could not be posted!"
      render "new"
    end
  end

end
