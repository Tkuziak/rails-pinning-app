class PinsController < ApplicationController
  
  def index
    @pins = Pin.all
  end

  def show
    @pin = Pin.find(params[:id])
  end
  
  def show_by_name
  	@pin = Pin.find_by_slug(params[:slug])
  	render :show
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(allowed_params)
    if @pin.save
      redirect_to @pin
    else
      render 'new'
    end
  end

  def edit
    @pin = Pin.find(params[:id])
  end

  def update
    @pin = Pin.find(params[:id])
    if @pin.update_attributes(allowed_params)
      # Handle a successful update.
      redirect_to @pin
    else
      @error = @pin.errors
      render 'edit'
    end
  end


  private

  def allowed_params
    params.require(:pin).permit(:title, :url, :slug, :text, :category_id, :image)
  end

end