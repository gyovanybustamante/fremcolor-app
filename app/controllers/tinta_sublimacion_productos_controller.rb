class TintaSublimacionProductosController < ApplicationController
  before_action :set_tinta_sublimacion_producto, only: [:show, :edit, :update, :destroy]

  # GET /tinta_sublimacion_productos
  # GET /tinta_sublimacion_productos.json
  def index
    @tinta_sublimacion_productos = TintaSublimacionProducto.all
  end

  # GET /tinta_sublimacion_productos/1
  # GET /tinta_sublimacion_productos/1.json
  def show
  end

  # GET /tinta_sublimacion_productos/new
  def new
    @tinta_sublimacion_producto = TintaSublimacionProducto.new
  end

  # GET /tinta_sublimacion_productos/1/edit
  def edit
  end

  # POST /tinta_sublimacion_productos
  # POST /tinta_sublimacion_productos.json
  def create
    @tinta_sublimacion_producto = TintaSublimacionProducto.new(tinta_sublimacion_producto_params)

    respond_to do |format|
      if @tinta_sublimacion_producto.save
        format.html { redirect_to @tinta_sublimacion_producto, notice: 'Tinta sublimacion producto was successfully created.' }
        format.json { render :show, status: :created, location: @tinta_sublimacion_producto }
      else
        format.html { render :new }
        format.json { render json: @tinta_sublimacion_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tinta_sublimacion_productos/1
  # PATCH/PUT /tinta_sublimacion_productos/1.json
  def update
    respond_to do |format|
      if @tinta_sublimacion_producto.update(tinta_sublimacion_producto_params)
        format.html { redirect_to @tinta_sublimacion_producto, notice: 'Tinta sublimacion producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @tinta_sublimacion_producto }
      else
        format.html { render :edit }
        format.json { render json: @tinta_sublimacion_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tinta_sublimacion_productos/1
  # DELETE /tinta_sublimacion_productos/1.json
  def destroy
    @tinta_sublimacion_producto.destroy
    respond_to do |format|
      format.html { redirect_to tinta_sublimacion_productos_url, notice: 'Tinta sublimacion producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tinta_sublimacion_producto
      @tinta_sublimacion_producto = TintaSublimacionProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tinta_sublimacion_producto_params
      params.require(:tinta_sublimacion_producto).permit(:video, :titulo, :linea_producto, :marca, :descripcion, :especificaciones_tecnicas, :presentacion, :precio)
    end
end
