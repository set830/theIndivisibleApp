class CommentsController < ApplicationController
  skip_before_action :authenticate_user!, only:[:index, :show, :edit, :update]

  before_action :current_user_must_be_owner, :only => [:edit, :update, :destroy]

  def current_user_must_be_owner
    @comment = Comment.find(params[:id])
    if @comment.page.user != current_user
      redirect_to root_url, :alert => "Not authorized"
    end
  end


  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new
    @comment.body = params[:body]
    @comment.name = params[:name]
    @comment.page_id = params[:page_id]

    if @comment.save
      redirect_to :back
    else
      render 'new'
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])

    @comment.body = params[:body]
    @comment.name = params[:name]
    @comment.page_id = params[:page_id]

    if @comment.save
      redirect_to "/comments", :notice => "Comment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :back

  end
end
