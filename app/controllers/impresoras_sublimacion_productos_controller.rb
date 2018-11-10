class ImpresorasSublimacionProductosController < ApplicationController
  before_action :set_impresoras_sublimacion_producto, only: [:show, :edit, :update, :destroy]

  # GET /impresoras_sublimacion_productos
  # GET /impresoras_sublimacion_productos.json
  def index
    @impresoras_sublimacion_productos = ImpresorasSublimacionProducto.all
  end

  # GET /impresoras_sublimacion_productos/1
  # GET /impresoras_sublimacion_productos/1.json
  def show
  end

  # GET /impresoras_sublimacion_productos/new
  def new
    @impresoras_sublimacion_producto = ImpresorasSublimacionProducto.new
  end

  # GET /impresoras_sublimacion_productos/1/edit
  def edit
  end

  # POST /impresoras_sublimacion_productos
  # POST /impresoras_sublimacion_productos.json
  def create
    @impresoras_sublimacion_producto = ImpresorasSublimacionProducto.new(impresoras_sublimacion_producto_params)

    respond_to do |format|
      if @impresoras_sublimacion_producto.save
        format.html { redirect_to @impresoras_sublimacion_producto, notice: 'Impresoras sublimacion producto was successfully created.' }
        format.json { render :show, status: :created, location: @impresoras_sublimacion_producto }
      else
        format.html { render :new }
        format.json { render json: @impresoras_sublimacion_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /impresoras_sublimacion_productos/1
  # PATCH/PUT /impresoras_sublimacion_productos/1.json
  def update
    respond_to do |format|
      if @impresoras_sublimacion_producto.update(impresoras_sublimacion_producto_params)
        format.html { redirect_to @impresoras_sublimacion_producto, notice: 'Impresoras sublimacion producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @impresoras_sublimacion_producto }
      else
        format.html { render :edit }
        format.json { render json: @impresoras_sublimacion_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /impresoras_sublimacion_productos/1
  # DELETE /impresoras_sublimacion_productos/1.json
  def destroy
    @impresoras_sublimacion_producto.destroy
    respond_to do |format|
      format.html { redirect_to impresoras_sublimacion_productos_url, notice: 'Impresoras sublimacion producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_impresoras_sublimacion_producto
      @impresoras_sublimacion_producto = ImpresorasSublimacionProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def impresoras_sublimacion_producto_params
      params.require(:impresoras_sublimacion_producto).permit(:video, :titulo, :linea_producto, :marca, :descripcion, :especificaciones_tecnicas, :presentacion, :precio)
    end
end
