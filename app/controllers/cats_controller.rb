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
  end

  private


  def cat_params
   params.require(:cat).permit(:name, :age, :sex, :disposition, :cost, :adopted, :neutered, :image, :agency)
  end
end
