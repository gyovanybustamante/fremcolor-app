class PlanchasSublimacionProductosController < ApplicationController
  before_action :set_planchas_sublimacion_producto, only: [:show, :edit, :update, :destroy]

  # GET /planchas_sublimacion_productos
  # GET /planchas_sublimacion_productos.json
  def index
    @planchas_sublimacion_productos = PlanchasSublimacionProducto.all
  end

  # GET /planchas_sublimacion_productos/1
  # GET /planchas_sublimacion_productos/1.json
  def show
  end

  # GET /planchas_sublimacion_productos/new
  def new
    @planchas_sublimacion_producto = PlanchasSublimacionProducto.new
  end

  # GET /planchas_sublimacion_productos/1/edit
  def edit
  end

  # POST /planchas_sublimacion_productos
  # POST /planchas_sublimacion_productos.json
  def create
    @planchas_sublimacion_producto = PlanchasSublimacionProducto.new(planchas_sublimacion_producto_params)

    respond_to do |format|
      if @planchas_sublimacion_producto.save
        format.html { redirect_to @planchas_sublimacion_producto, notice: 'Planchas sublimacion producto was successfully created.' }
        format.json { render :show, status: :created, location: @planchas_sublimacion_producto }
      else
        format.html { render :new }
        format.json { render json: @planchas_sublimacion_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planchas_sublimacion_productos/1
  # PATCH/PUT /planchas_sublimacion_productos/1.json
  def update
    respond_to do |format|
      if @planchas_sublimacion_producto.update(planchas_sublimacion_producto_params)
        format.html { redirect_to @planchas_sublimacion_producto, notice: 'Planchas sublimacion producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @planchas_sublimacion_producto }
      else
        format.html { render :edit }
        format.json { render json: @planchas_sublimacion_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planchas_sublimacion_productos/1
  # DELETE /planchas_sublimacion_productos/1.json
  def destroy
    @planchas_sublimacion_producto.destroy
    respond_to do |format|
      format.html { redirect_to planchas_sublimacion_productos_url, notice: 'Planchas sublimacion producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planchas_sublimacion_producto
      @planchas_sublimacion_producto = PlanchasSublimacionProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planchas_sublimacion_producto_params
      params.require(:planchas_sublimacion_producto).permit(:video, :titulo, :linea_producto, :marca, :descripcion, :especificaciones_tecnicas, :presentacion, :precio)
    end
end
