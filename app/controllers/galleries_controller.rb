class GalleriesController < ApplicationController
  def show
    @gallery = Gallery.find(params[:id])
  end

  def create
    @gallery = current_user.galleries.new(params[:gallery])
    
    if @gallery.save
      flash[:notice] = "Gallery created successfully"
      redirect_to @gallery
    else
      render :action => :new
    end
  end

  def new
    @gallery = Gallery.new
  end
end