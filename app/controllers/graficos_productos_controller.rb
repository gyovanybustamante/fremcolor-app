class GraficosProductosController < ApplicationController
  before_action :set_graficos_producto, only: [:show, :edit, :update, :destroy]

  # GET /graficos_productos
  # GET /graficos_productos.json
  def index
    @graficos_productos = GraficosProducto.all
  end

  # GET /graficos_productos/1
  # GET /graficos_productos/1.json
  def show
  end

  # GET /graficos_productos/new
  def new
    @graficos_producto = GraficosProducto.new
  end

  # GET /graficos_productos/1/edit
  def edit
  end

  # POST /graficos_productos
  # POST /graficos_productos.json
  def create
    @graficos_producto = GraficosProducto.new(graficos_producto_params)

    respond_to do |format|
      if @graficos_producto.save
        format.html { redirect_to @graficos_producto, notice: 'Graficos producto was successfully created.' }
        format.json { render :show, status: :created, location: @graficos_producto }
      else
        format.html { render :new }
        format.json { render json: @graficos_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graficos_productos/1
  # PATCH/PUT /graficos_productos/1.json
  def update
    respond_to do |format|
      if @graficos_producto.update(graficos_producto_params)
        format.html { redirect_to @graficos_producto, notice: 'Graficos producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @graficos_producto }
      else
        format.html { render :edit }
        format.json { render json: @graficos_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graficos_productos/1
  # DELETE /graficos_productos/1.json
  def destroy
    @graficos_producto.destroy
    respond_to do |format|
      format.html { redirect_to graficos_productos_url, notice: 'Graficos producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graficos_producto
      @graficos_producto = GraficosProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graficos_producto_params
      params.require(:graficos_producto).permit(:video, :titulo, :linea_producto, :marca, :descripcion, :especificaciones_tecnicas, :presentacion, :precio)
    end
end
