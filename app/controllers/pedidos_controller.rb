class PedidosController < ApplicationController
  def index
    render json: Pedido.all
  end
  def create
    pedido = Pedido.new(pedido_params)
      if pedido.save
        render json: pedido, status: :created
      else
        render json: pedido.errors, status: :unprocessable_entity
      end
  end

  def destroy
    Pedido.find(params[:id]).destroy!

    head :no_content
  end

  private

  def pedido_params
    params.require(:pedido).permit(:motherboard, :ram, :cpu, :gpu)
  end
end
