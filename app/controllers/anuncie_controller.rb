class AnuncieController < ApplicationController
  def index
    @planos = Plano.all
  end
  def confirmar_plano
    session[:usuario_id] = nil
    session[:plano_id] = params[:plano_id]
    redirect_to :controller => 'admin/principal'
  end
end
