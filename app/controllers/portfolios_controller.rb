class PortfoliosController < ApplicationController
  def index
  @foo = "bar"
   @portfolio = Portfolio.all
  end

  def new
    @foo = "bar"
  end

  def create
   @portfolio = Portfolio.new(portfolio_params)

   if @portfolio.save
     redirect_to @portfolio
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

  def show
   @portfolio = Portfolio.find(params[:id])
  end

  def edit
   #@portfolio = Portfolio.find(params[:id])
  end

  def update
   #@portfolio = Portfolio.find(params[:id])


    #if @portfolio.update_attributes(portfolio_params)
      #redirect_to portfolios_path, :notice => "Entry updated successfully."
    #else
      #render portfolios_path
    #end#
  end

  def destroy
   #@portfolio = Portfolio.find(params[:id])
   #@portfolio.destroy
   #redirect_to portfolios_path, :notice => "entry deleted."
  end

  def portfolio_params
    #params.require(:portfolio).permit(:name, :category, :description)
  end
end
