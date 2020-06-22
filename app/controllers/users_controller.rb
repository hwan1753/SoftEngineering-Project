class UsersController < ApplicationController
  def new  
	  @user = User.new
  end

  def show
  end
	
  def index
    @posts = Post.all.order("created_at DESC")
  end
end
