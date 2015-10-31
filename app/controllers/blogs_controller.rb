class BlogsController < ApplicationController
  def index
   @blog = Blog.all

   #respond_to do |format|
      #format.html # index.html.erb
      #format.json { render json: @blog }
   #end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
  end

  def create
   @blog = Blog.new(blog_params)

   if @blog.save
     redirect_to @blog
   end

    #respond_to do |format|
      #if @blog.save
        #redirect_to @blog
        #format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        #format.json { render json: @blog, status: :created, location: @blog }
      #else
        #format.html { render action: "index" }
        #format.json { render json: @blog.errors, status: :unprocessable_entity }
      #end
    #end
  end

  def update
    @blog = Blog.find(params[:id])


    if @blog.update_attributes(blog_params)
      redirect_to blogs_path, :notice => "Blog updated successfully."
    else
      render blogs_path
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path, :notice => "Blog deleted."
  end

  def blog_params
    params.require(:blog).permit(:title, :headline, :blogBody)
  end
end
