class PlatillosController < ApplicationController
  before_action :set_empleado, only:[:show, :edit, :update, :destroy]
  
    def index
      @platillos = Platillo.all
    end
  
    def show
    end

    def new
      @platillo = Platillo.new
    end
  
    def create
      @restaurante = Restaurante.find(params[:restaurante_id])
      @platillo = Platillo.new(platillos_params)
      @platillo.restaurante = @restaurante
    end
    
    def edit
    end

    def update
      @empleado.update(platillos_params) 
    end
  
    def destroy
      @platillo.destroy
    end
private

def set_platillo
  @platillo = Platillo.find(params[:id])
end

def platillos_params
  params.require(:platillo).permit(:nombre)
end

end
