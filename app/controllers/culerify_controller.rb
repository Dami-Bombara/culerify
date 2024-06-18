class CulerifyController < ApplicationController
  def index
    @culer = Culer.all
  end

  def show
    @culer = Culer.find(params[:id])
  end

  def new
  end

  def create
    @culer = Culer.create(name: params[:name], age: params[:age], country: params[:country], position: params[:position],
                          kit_number: params[:kit_number])

    redirect_to culerify_url
  end


end