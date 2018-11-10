class InsumosSublimacionProductosController < ApplicationController
  before_action :set_insumos_sublimacion_producto, only: [:show, :edit, :update, :destroy]

  # GET /insumos_sublimacion_productos
  # GET /insumos_sublimacion_productos.json
  def index
    @insumos_sublimacion_productos = InsumosSublimacionProducto.all
  end

  # GET /insumos_sublimacion_productos/1
  # GET /insumos_sublimacion_productos/1.json
  def show
  end

  # GET /insumos_sublimacion_productos/new
  def new
    @insumos_sublimacion_producto = InsumosSublimacionProducto.new
  end

  # GET /insumos_sublimacion_productos/1/edit
  def edit
  end

  # POST /insumos_sublimacion_productos
  # POST /insumos_sublimacion_productos.json
  def create
    @insumos_sublimacion_producto = InsumosSublimacionProducto.new(insumos_sublimacion_producto_params)

    respond_to do |format|
      if @insumos_sublimacion_producto.save
        format.html { redirect_to @insumos_sublimacion_producto, notice: 'Insumos sublimacion producto was successfully created.' }
        format.json { render :show, status: :created, location: @insumos_sublimacion_producto }
      else
        format.html { render :new }
        format.json { render json: @insumos_sublimacion_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insumos_sublimacion_productos/1
  # PATCH/PUT /insumos_sublimacion_productos/1.json
  def update
    respond_to do |format|
      if @insumos_sublimacion_producto.update(insumos_sublimacion_producto_params)
        format.html { redirect_to @insumos_sublimacion_producto, notice: 'Insumos sublimacion producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @insumos_sublimacion_producto }
      else
        format.html { render :edit }
        format.json { render json: @insumos_sublimacion_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insumos_sublimacion_productos/1
  # DELETE /insumos_sublimacion_productos/1.json
  def destroy
    @insumos_sublimacion_producto.destroy
    respond_to do |format|
      format.html { redirect_to insumos_sublimacion_productos_url, notice: 'Insumos sublimacion producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insumos_sublimacion_producto
      @insumos_sublimacion_producto = InsumosSublimacionProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insumos_sublimacion_producto_params
      params.require(:insumos_sublimacion_producto).permit(:video, :titulo, :linea_producto, :marca, :descripcion, :especificaciones_tecnicas, :presentacion, :precio)
    end
end
