class InsumosSerigrafiaProductosController < ApplicationController
  before_action :set_insumos_serigrafia_producto, only: [:show, :edit, :update, :destroy]

  # GET /insumos_serigrafia_productos
  # GET /insumos_serigrafia_productos.json
  def index
    @insumos_serigrafia_productos = InsumosSerigrafiaProducto.all
  end

  # GET /insumos_serigrafia_productos/1
  # GET /insumos_serigrafia_productos/1.json
  def show
  end

  # GET /insumos_serigrafia_productos/new
  def new
    @insumos_serigrafia_producto = InsumosSerigrafiaProducto.new
  end

  # GET /insumos_serigrafia_productos/1/edit
  def edit
  end

  # POST /insumos_serigrafia_productos
  # POST /insumos_serigrafia_productos.json
  def create
    @insumos_serigrafia_producto = InsumosSerigrafiaProducto.new(insumos_serigrafia_producto_params)

    respond_to do |format|
      if @insumos_serigrafia_producto.save
        format.html { redirect_to @insumos_serigrafia_producto, notice: 'Insumos serigrafia producto was successfully created.' }
        format.json { render :show, status: :created, location: @insumos_serigrafia_producto }
      else
        format.html { render :new }
        format.json { render json: @insumos_serigrafia_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insumos_serigrafia_productos/1
  # PATCH/PUT /insumos_serigrafia_productos/1.json
  def update
    respond_to do |format|
      if @insumos_serigrafia_producto.update(insumos_serigrafia_producto_params)
        format.html { redirect_to @insumos_serigrafia_producto, notice: 'Insumos serigrafia producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @insumos_serigrafia_producto }
      else
        format.html { render :edit }
        format.json { render json: @insumos_serigrafia_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insumos_serigrafia_productos/1
  # DELETE /insumos_serigrafia_productos/1.json
  def destroy
    @insumos_serigrafia_producto.destroy
    respond_to do |format|
      format.html { redirect_to insumos_serigrafia_productos_url, notice: 'Insumos serigrafia producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insumos_serigrafia_producto
      @insumos_serigrafia_producto = InsumosSerigrafiaProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insumos_serigrafia_producto_params
      params.require(:insumos_serigrafia_producto).permit(:video, :titulo, :linea_producto, :marca, :descripcion, :especificaciones_tecnicas, :presentacion, :precio)
    end
end
