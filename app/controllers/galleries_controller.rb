class GalleriesController < ApplicationController
  before_filter :authorize, :only => [:new, :create]
  
  def show
    @gallery = Gallery.find(params[:id])
  end

  def create
    @gallery = Gallery.new(params[:gallery])
    # @gallery = current_user.galleries.new(params[:gallery])
    
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