class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
  def index
    @cocktails = Cocktail.all
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktail_path(cocktail)
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
  end

  def edit
  end

  def update
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
