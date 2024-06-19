class CulerifyController < ApplicationController
  def index
    @culer = Culer.all
  end

  def show
    @culer = Culer.find(params[:id])
  end

  def new
    @culer = Culer.new
  end

  def create
    @culer = Culer.create(name: params[:culer][:name], age: params[:culer][:age], country: params[:culer][:country],
                          position: params[:culer][:position], kit_number: params[:culer][:kit_number])

    redirect_to culer_url(@culer)
  end

  def edit
    @culer = Culer.find(params[:id])
  end

  def update
    @culer = Culer.find(params[:id])

    @culer.update(name: params[:culer][:name], age: params[:culer][:age], country: params[:culer][:country],
                  position: params[:culer][:position], kit_number: params[:culer][:kit_number])

    redirect_to culer_url(id: @culer.id)
  end

  def destroy
    @culer = Culer.find(params[:id])

    @culer.delete

    redirect_to culerify_path
  end
end