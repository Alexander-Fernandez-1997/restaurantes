class EmpleadosController < ApplicationController
  before_action :set_empleado, only:[:edit, :update, :destroy]
  
    def index
      @empleado = Empleado.all
    end
  
    def new
      @empleado = Empleado.new
    end
  
    def create
      @restaurante = Restaurante.find(params[:restaurante_id])
      @empleado = Empleado.new(empleados_params)
      @empleado.restaurante = @restaurante
      @empleado.save
    end
  
    def edit
    end
    
    def update
      @empleado.update(empleados_params) 
    end
  
    def destroy
      @empleado.destroy
    end
  
private

def set_empleado
  @empleado = empleado.find(params[:id])
end

def empleados_params
  params.require(:empleado).permit(:nombre, :edad, :rol)
end

end
