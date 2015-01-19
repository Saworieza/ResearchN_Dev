class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  respond_to :html

  def index
    @blogs = Blog.paginate(page: params[:page], :per_page => 3) 
    respond_with(@blogs)

    if params[:tag]
      @blogs = Blog.tagged_with(params[:tag])
    else
      @blogs = Blog.paginate(page: params[:page], :per_page => 3) 
    end
  end

  def show
    respond_with(@blog)
  end

  def new
    @blog = Blog.new
    respond_with(@blog)
  end

  def edit
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    respond_with(@blog)
=begin
    if @blog.save
      format.js #will search for create.js.erb
    else
      format.html { render blogs_path }
    end
=end    
  end

  def update
    @blog.update(blog_params)
    respond_with(@blog)
  end

  def destroy
    @blog.destroy
    respond_with(@blog)
  end

  private
    def set_blog
      @blog = Blog.find(params[:id])
    end

    def blog_params
      params.require(:blog).permit(:title, :post, :image, :all_tags)
    end
end
