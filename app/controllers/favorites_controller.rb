class FavoritesController < ApplicationController
  before_action :set_blog, only: [:create, :destroy]

  def create
    current_user.favorites.create(blog_id: params[:blog_id]).save
    # redirect_to blogs_path
  end

  def destroy
    current_user.favorites.find_by(id: params[:id]).destroy
    # redirect_to blogs_path
  end

  private
  def set_blog
    @blog = Blog.find(params[:blog_id])
  end
end
