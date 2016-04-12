class RecursoOrdensController < ApplicationController
  before_action :set_recurso_orden, only: [:edit, :update, :destroy]
  before_action :set_orden


  # GET /recurso_ordens/new
  def new
    @recurso_orden = RecursoOrden.new
    respond_to {|format| format.js}
  end

  # GET /recurso_ordens/1/edit
  def edit
  end

  # POST /recurso_ordens
  # POST /recurso_ordens.json
  def create
    @recurso_orden = RecursoOrden.new(recurso_orden_params)
    @recurso_orden.orden_id = @orden.id
    respond_to do |format|
      if @recurso_orden.save
        format.js
      else
        format.js{ render :new}
      end
    end
  end

  # PATCH/PUT /recurso_ordens/1
  # PATCH/PUT /recurso_ordens/1.json
  def update
    respond_to do |format|
      if @recurso_orden.update(recurso_orden_params)
        format.js
      else
        format.js{ render :new}
      end
    end
  end

  # DELETE /recurso_ordens/1
  # DELETE /recurso_ordens/1.json
  def destroy
    @recurso_orden.destroy
    respond_to do |format|
     format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recurso_orden
      @recurso_orden = RecursoOrden.find(params[:id]) if params[:id]
    end

    def set_orden
      @orden = Orden.find(params[:orden_id])      
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def recurso_orden_params
      params.require(:recurso_orden).permit(:talla, :cantidad, :orden_id)
    end
end
