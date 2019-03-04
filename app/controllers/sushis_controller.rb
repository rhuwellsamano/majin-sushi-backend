class SushisController < ApplicationController

   def index
     @sushis = Sushi.all
     render json: @sushis
   end

   def show
     @sushi = Sushi.find(params[:id])
     render json: @sushi
   end

   def create
     @sushi = Sushi.create(sushi_params)
     render json: @sushi
   end

   def update
     @sushi = Sushi.find(params[:id])
     @sushi.update
     render json: @sushi
   end

   def destroy
     @sushi = Sushi.find(params[:id])
     @sushi.destroy
   end

   private
  def sushi_params
    params.require(:sushi).permit(:name, :description, :image_url, :price, :customize)
  end

end
