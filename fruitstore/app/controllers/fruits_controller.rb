class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all.reverse

    respond_to do |format|
      format.html # Nothing here means "do as normal"
      format.json { render :json => @fruits }
    end
  end
  #
  # def show
  #   @fruit = Fruit.find params[:id]
  # end

  def create
    @fruit = Fruit.new fruit_params
    if
      @fruit.save
      redirect_to @fruit
      # fruit_path(@fruit.id)
    else
        render :new
    end
  end

  private

  def fruit_params
    params.require(:fruit).permit(:name)
  end

end
