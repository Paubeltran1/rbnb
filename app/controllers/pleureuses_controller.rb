class PleureusesController < ApplicationController
  def index
    @pleureuses = Pleureuse.all
  end

  def show
    @pleureuse = Pleureuse.find(params[:id])
  end

  def edit
    @pleureuse = Pleureuse.find(params[:id])
  end

  def update
    @pleureuse = Pleureuse.find(params[:id])
    @pleureuse.update(params[:pleureuse])
  end

  def new
    Pleuseuse.new
  end

  def create
    @user = User.find(params[:user_id])
    @pleureuse = @user.pleureuses.new(pleureuse_params)
  end

  def destroy
    @pleureuse = Pleureuse.find(params[:id])
    @pleureuse.destroy
  end

  private

  def pleureuse_params
    params.require(:pleureuse).permit(:pseudo, :gender, :city, :price, :description, :drama_option, :language, :adress)
  end
end
