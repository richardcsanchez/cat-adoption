class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
     if @cat.save
       redirect_to cat_path(@cat)
     else
       render :new
     end
  end

  def show
    @cat = Cat.find_by_id(params[:id])
  end

  private


  def cat_params
   params.require(:cat).permit(:name, :age, :breed, :sex, :disposition, :cost, :adopted, :neutered, :image, :agency_id)
  end
end
