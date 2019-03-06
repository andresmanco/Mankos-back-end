class ClientsController < ApplicationController

  def index
    render json: Client.all
  end

  def show
    render json: Client.find_by(telefono: params[:telefono])
  end

  def create
    render json: Client.create(user_params)
  end

  def updated
    Client.find(params[:id]).update(user_params)
    render json: Client.find_by(params[:id])
  end

  def destroy
    render json: Client.find(params[:id]).destroy
  end

  private

  def user_params
    params.require(:client).permit(:nombre, :direccion, :telefono, :numero_visita, :id)
  end

end
