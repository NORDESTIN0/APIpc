class PedidosController < ApplicationController
  def index
    render json: Pedido.all
  end
  def create
    pedido = Pedido.new(pedido_params)
      if pedido.save
        render json: pedido, status: :created
      else
        render json: pedido.errors, status: :unproccessable_entity
      end
  end

  private

  def pedido_params
    params.require(:pedido).permit(:Motherboard, :Ram, :CPU, :GPU)
  end
end