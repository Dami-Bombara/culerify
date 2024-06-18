class CulerifyController < ApplicationController
  def index
    @culer = Culer.all
  end
end