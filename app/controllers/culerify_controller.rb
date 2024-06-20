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
    @culer = Culer.create(culer_params)

    redirect_to culer_url(@culer)
  end

  def edit
    @culer = Culer.find(params[:id])
  end

  def update
    @culer = Culer.find(params[:id])

    @culer.update(culer_params)

    redirect_to culer_url(id: @culer.id)
  end

  def destroy
    @culer = Culer.find(params[:id])

    @culer.delete

    redirect_to culerify_path
  end

  private
  def culer_params
    params.require(:culer).permit(:name, :age, :country, :position, :kit_number)
  end
end