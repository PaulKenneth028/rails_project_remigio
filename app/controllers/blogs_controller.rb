class BlogsController < ApplicationController
  before_action :set_blog, only: %i[ show edit update destroy ]

  # GET /blogs or /blogs.json
  def index
    @blogs = Blog.order(created_at: :desc)
  end

  # GET /blogs/1 or /blogs/1.json
  def show
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs or /blogs.json
  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path
    else
      flash[:error] = @blog.errors.full_messages.join(', ')
      render :new
    end
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update
    @blog = Blog.find(params[:id])
  
    if @blog.update(blog_params)
      redirect_to blog_path(@blog), notice: "Blog was successfully updated."
    else
      # render the edit form again with errors
      render :edit
    end
  end

  # DELETE /blogs/1 or /blogs/1.json
  def destroy
    @blog = Blog.where(id: params[:id]).first
    
    if @blog.destroy
    redirect_to blogs_path
    else
      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(:title, :body)
    end
end