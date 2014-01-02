class PostsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update]
   
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  
  
  def new 
    @post = Post.new
    #@post.build_document
  end
  
  def create
    @post = Post.new(params[:post])
    @post.save
    redirect_to posts_path
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  
  def column_count
    posts_count = (Posts.all).count
  end

    
    
end
