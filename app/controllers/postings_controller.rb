class PostingsController < ApplicationController
  skip_before_action :authenticate_user!, only:[:create]

  before_action :current_user_must_be_owner, :only => [:edit, :update, :destroy]

  def current_user_must_be_owner
    @posting = Posting.find(params[:id])
    if @posting.page.user != current_user
      redirect_to root_url, :alert => "Not authorized"
    end
  end

  def index
    @postings = Posting.all
  end

  def show
    @posting = Posting.find(params[:id])
  end

  def new
    @posting = Posting.new
  end

  def create
    @posting = Posting.new
    @posting.name = params[:name]
    @posting.prayerdate = params[:prayerdate]
    @posting.body = params[:body]
    @posting.page_id = params[:page_id]

    if @posting.save
      redirect_to :back, :notice => "Claimed #{params[:prayerdate]}."
    else
      redirect_to :back, :notice => "Please fill in both name and message."
    end
  end

  def edit
    @posting = Posting.find(params[:id])
  end

  def update
    @posting = Posting.find(params[:id])

    @posting.name = params[:name]
    @posting.body = params[:body]
    @posting.page_id = params[:page_id]

    if @posting.save
      redirect_to "/postings", :notice => "Comment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @posting = Posting.find(params[:id])

    @posting.destroy

    redirect_to :back
  end
end
