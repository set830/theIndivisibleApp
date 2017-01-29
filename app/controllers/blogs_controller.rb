class BlogsController < ApplicationController
  skip_before_action :authenticate_user!, only:[:show]

  before_action :current_user_must_be_owner, :only => [:edit, :update, :destroy]

  def current_user_must_be_owner
    @blog = Blog.find(params[:id])
    if @blog.page.user != current_user
      redirect_to root_url, :alert => "Not authorized"
    end
  end

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
    @page = Page.find(params[:id])
  end

  def create
    @blog = Blog.new
    @blog.title = params[:title]
    @blog.photo = params[:photo]
    @blog.body = params[:body]
    @blog.page_id = params[:page_id]

    if @blog.save
      redirect_to "/pages/#{@blog.page_id}", :notice => "Post created."
    else
      render 'new'
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])

    @blog.title = params[:title]
    @blog.photo = params[:photo]
    @blog.body = params[:body]
    @blog.page_id = params[:page_id]

    if @blog.save
      redirect_to "/pages/#{@blog.page_id}", :notice => "Post created."
    else
      render 'edit', :notice => "Not Saved."
    end
  end

  def destroy
    @blog = Blog.find(params[:id])

    @blog.destroy

    redirect_to "/pages/#{@blog.page_id}", :notice => "Post deleted."
  end
end
