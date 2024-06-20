class CulerifyController < ApplicationController
  before_action :set_culer, only: [:show, :edit, :update, :destroy]
  def index
    @culer = Culer.all
  end

  def show
  end

  def new
    @culer = Culer.new
  end

  def create
    @culer = Culer.new(culer_params)

    if @culer.save
      redirect_to culer_url(@culer)
    else
      render 'new', status: :unprocessable_entity #HTTP STATUS CODE: 422
    end
  end

  def edit
  end

  def update
    if @culer.update(culer_params)
      redirect_to culer_url(id: @culer.id)
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @culer.delete

    redirect_to culerify_path
  end

  private
  def culer_params
    params.require(:culer).permit(:name, :age, :country, :position, :kit_number)
  end

  def set_culer
    @culer = Culer.find(params[:id])
  end
end