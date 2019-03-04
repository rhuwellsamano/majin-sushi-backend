class SushiordersController < ApplicationController

  def index
    @sushiorders = SushiOrder.all
    render json: @sushiorders
  end

  def show
    @sushiorder = SushiOrder.find(params[:id])
    render json: @sushiorder
  end

  def create
    @sushiorder = SushiOrder.create(sushi_order_params)
    render json: @sushiorder
  end

  def update
    @sushiorder = SushiOrder.find(params[:id])
    @sushiorder.update
    render json: @sushiorder
  end

  def destroy
    @sushiorder = SushiOrder.find(params[:id])
    @sushiorder.destroy
  end

  private
 def sushiorder_params
   params.require(:sushiorder).permit(:user_id, :sushi_id)
 end

end
