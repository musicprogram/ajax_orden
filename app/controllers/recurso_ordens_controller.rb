class RecursoOrdensController < ApplicationController
  before_action :set_recurso_orden, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /recurso_ordens
  # GET /recurso_ordens.json
  def index
    @recurso_ordens = @orden.recurso_ordens.all
  end

  # GET /recurso_ordens/1
  # GET /recurso_ordens/1.json
  def show
  end

  # GET /recurso_ordens/new
  def new
    @recurso_orden = RecursoOrden.new
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
        format.html { redirect_to orden_recurso_ordens_path(@orden), notice: 'Recurso orden was successfully created.' }
        format.json { render :show, status: :created, location: @recurso_orden }
      else
        format.html { render :new }
        format.json { render json: @recurso_orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recurso_ordens/1
  # PATCH/PUT /recurso_ordens/1.json
  def update
    respond_to do |format|
      if @recurso_orden.update(recurso_orden_params)
        format.html { redirect_to orden_recurso_ordens_path(@orden), notice: 'Recurso orden was successfully updated.' }
        format.json { render :show, status: :ok, location: @recurso_orden }
      else
        format.html { render :edit }
        format.json { render json: @recurso_orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recurso_ordens/1
  # DELETE /recurso_ordens/1.json
  def destroy
    @recurso_orden.destroy
    respond_to do |format|
      format.html { redirect_to orden_recurso_ordens_url(@orden), notice: 'Recurso orden was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recurso_orden
      @orden = Orden.find(params[:orden_id])
      @recurso_orden = RecursoOrden.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recurso_orden_params
      params.require(:recurso_orden).permit(:talla, :cantidad, :orden_id)
    end
end
