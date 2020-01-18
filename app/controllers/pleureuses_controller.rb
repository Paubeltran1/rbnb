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
    @pleureuse.update(pleureuse_params)
      if @pleureuse.save
    redirect_to pleureuse_path(@pleureuse)
    else
    render "edit"
    end
  end

  def new
    @pleureuse = Pleureuse.new
  end

  def create
    @pleureuse = Pleureuse.new(pleureuse_params)
    @pleureuse.user = current_user
    if @pleureuse.save
    redirect_to pleureuse_path(@pleureuse)
    else
    render "new"
    end
  end


  def destroy
    @pleureuse = Pleureuse.find(params[:id])
    @pleureuse.destroy
  end

  private

  def pleureuse_params
    params.require(:pleureuse).permit(:pseudo, :gender, :city, :price, :description, :drama_option, :language, :address)
  end
end
