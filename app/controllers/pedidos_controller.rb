class PedidosController < ApplicationController
  before_action :set_pedido, only:[:show, :edit, :update, :destroy]
  
    def index
      @pedidos = Pedido.all
    end
  
    def show
    end

    def new
      @pedido = Pedido.new
    end
  
    def create
      @pedido = Platillo.new(pedidos_params)
    end
    
    def edit
    end

    def update
      @pedido.update(pedidos_params) 
    end
  
    def destroy
      @pedido.destroy
    end
private

def set_pedido
  @pedidoo = Pedido.find(params[:id])
end

def pedidos_params
  params.require(:pedido).permit(:restaurante_id, :empleado_id, :platillo_id)
end

end

