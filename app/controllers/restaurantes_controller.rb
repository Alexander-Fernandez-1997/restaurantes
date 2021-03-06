class RestaurantesController < ApplicationController
  before_action :set_restaurante, only:[:show, :edit, :update]

  def index
    @restaurantes = Restaurante.all
  end

  def show
  end

  def edit
  end

  def update

    @restaurante.update(restaurantes_params)
  end

private
def set_restaurante
  @restaurante = Restaurante.find(params[:id])
end

def restaurantes_params
  params.require(:restaurante).permit(:nombre, :direccion, :estrellas, :capacidad, :estilo)
end

end
