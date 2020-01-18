class PleureusesController < ApplicationController
  def index
    @pleureuses = Pleureuse.all

    @photos = ["https://images.unsplash.com/photo-1573516515928-92444ec46ce2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1555&q=80","https://images.unsplash.com/photo-1566677379359-5ef1321fcb7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80","https://images.unsplash.com/photo-1551823934-61391394a6ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1993&q=80","https://images.unsplash.com/photo-1545792583-533185490f52?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=958&q=80","https://images.unsplash.com/photo-1567659893051-0b046978d0f0?ixlib=rb-1.2.1&auto=format&fit=crop&w=2850&q=80", "https://images.unsplash.com/photo-1533392151650-269f96231f65?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80","https://images.unsplash.com/photo-1546189827-c4cd7d1cc07d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80","https://images.unsplash.com/photo-1551823934-3d82b4d2fd1d?ixlib=rb-1.2.1&auto=format&fit=crop&w=2010&q=80"]
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
