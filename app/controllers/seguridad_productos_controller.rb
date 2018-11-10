class SeguridadProductosController < ApplicationController
  before_action :set_seguridad_producto, only: [:show, :edit, :update, :destroy]

  # GET /seguridad_productos
  # GET /seguridad_productos.json
  def index
    @seguridad_productos = SeguridadProducto.all
  end

  # GET /seguridad_productos/1
  # GET /seguridad_productos/1.json
  def show
  end

  # GET /seguridad_productos/new
  def new
    @seguridad_producto = SeguridadProducto.new
  end

  # GET /seguridad_productos/1/edit
  def edit
  end

  # POST /seguridad_productos
  # POST /seguridad_productos.json
  def create
    @seguridad_producto = SeguridadProducto.new(seguridad_producto_params)

    respond_to do |format|
      if @seguridad_producto.save
        format.html { redirect_to @seguridad_producto, notice: 'Seguridad producto was successfully created.' }
        format.json { render :show, status: :created, location: @seguridad_producto }
      else
        format.html { render :new }
        format.json { render json: @seguridad_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seguridad_productos/1
  # PATCH/PUT /seguridad_productos/1.json
  def update
    respond_to do |format|
      if @seguridad_producto.update(seguridad_producto_params)
        format.html { redirect_to @seguridad_producto, notice: 'Seguridad producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @seguridad_producto }
      else
        format.html { render :edit }
        format.json { render json: @seguridad_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seguridad_productos/1
  # DELETE /seguridad_productos/1.json
  def destroy
    @seguridad_producto.destroy
    respond_to do |format|
      format.html { redirect_to seguridad_productos_url, notice: 'Seguridad producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seguridad_producto
      @seguridad_producto = SeguridadProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seguridad_producto_params
      params.require(:seguridad_producto).permit(:video, :titulo, :linea_producto, :marca, :descripcion, :especificaciones_tecnicas, :presentacion, :precio)
    end
end
