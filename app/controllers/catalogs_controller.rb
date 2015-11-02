class CatalogsController < ApplicationController
  def index
   @catalog = Catalog.all

   #respond_to do |format|
      #format.html # index.html.erb
      #format.json { render json: @blog }
   #end
  end

  def show
    @catalog = Catalog.find(params[:id])
  end

  def new
  end

  def create
   @catalog = Catalog.new(catalog_params)

   if @catalog.save
     redirect_to @catalog
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
    @catalog = Catalog.find(params[:id])


    if @catalog.update_attributes(catalog_params)
      redirect_to catalogs_path, :notice => "Catalog updated successfully."
    else
      render catalogs_path
    end
  end

  def edit
    @catalog = Catalog.find(params[:id])
  end

  def destroy
    @catalog = Catalog.find(params[:id])
    @catalog.destroy
    redirect_to catalogs_path, :notice => "Catalog entrty deleted."
  end

  def catalog_params
    params.require(:catalog).permit(:name, :category, :description)
  end
end
