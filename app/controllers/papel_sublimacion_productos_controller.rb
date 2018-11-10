class PapelSublimacionProductosController < ApplicationController
  before_action :set_papel_sublimacion_producto, only: [:show, :edit, :update, :destroy]

  # GET /papel_sublimacion_productos
  # GET /papel_sublimacion_productos.json
  def index
    @papel_sublimacion_productos = PapelSublimacionProducto.all
  end

  # GET /papel_sublimacion_productos/1
  # GET /papel_sublimacion_productos/1.json
  def show
  end

  # GET /papel_sublimacion_productos/new
  def new
    @papel_sublimacion_producto = PapelSublimacionProducto.new
  end

  # GET /papel_sublimacion_productos/1/edit
  def edit
  end

  # POST /papel_sublimacion_productos
  # POST /papel_sublimacion_productos.json
  def create
    @papel_sublimacion_producto = PapelSublimacionProducto.new(papel_sublimacion_producto_params)

    respond_to do |format|
      if @papel_sublimacion_producto.save
        format.html { redirect_to @papel_sublimacion_producto, notice: 'Papel sublimacion producto was successfully created.' }
        format.json { render :show, status: :created, location: @papel_sublimacion_producto }
      else
        format.html { render :new }
        format.json { render json: @papel_sublimacion_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /papel_sublimacion_productos/1
  # PATCH/PUT /papel_sublimacion_productos/1.json
  def update
    respond_to do |format|
      if @papel_sublimacion_producto.update(papel_sublimacion_producto_params)
        format.html { redirect_to @papel_sublimacion_producto, notice: 'Papel sublimacion producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @papel_sublimacion_producto }
      else
        format.html { render :edit }
        format.json { render json: @papel_sublimacion_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /papel_sublimacion_productos/1
  # DELETE /papel_sublimacion_productos/1.json
  def destroy
    @papel_sublimacion_producto.destroy
    respond_to do |format|
      format.html { redirect_to papel_sublimacion_productos_url, notice: 'Papel sublimacion producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_papel_sublimacion_producto
      @papel_sublimacion_producto = PapelSublimacionProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def papel_sublimacion_producto_params
      params.require(:papel_sublimacion_producto).permit(:video, :titulo, :linea_producto, :marca, :descripcion, :especificaciones_tecnicas, :presentacion, :precio)
    end
end
