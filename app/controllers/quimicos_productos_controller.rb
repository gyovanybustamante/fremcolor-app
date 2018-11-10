class QuimicosProductosController < ApplicationController
  before_action :set_quimicos_producto, only: [:show, :edit, :update, :destroy]

  # GET /quimicos_productos
  # GET /quimicos_productos.json
  def index
    @quimicos_productos = QuimicosProducto.all
  end

  # GET /quimicos_productos/1
  # GET /quimicos_productos/1.json
  def show
  end

  # GET /quimicos_productos/new
  def new
    @quimicos_producto = QuimicosProducto.new
  end

  # GET /quimicos_productos/1/edit
  def edit
  end

  # POST /quimicos_productos
  # POST /quimicos_productos.json
  def create
    @quimicos_producto = QuimicosProducto.new(quimicos_producto_params)

    respond_to do |format|
      if @quimicos_producto.save
        format.html { redirect_to @quimicos_producto, notice: 'Quimicos producto was successfully created.' }
        format.json { render :show, status: :created, location: @quimicos_producto }
      else
        format.html { render :new }
        format.json { render json: @quimicos_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quimicos_productos/1
  # PATCH/PUT /quimicos_productos/1.json
  def update
    respond_to do |format|
      if @quimicos_producto.update(quimicos_producto_params)
        format.html { redirect_to @quimicos_producto, notice: 'Quimicos producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @quimicos_producto }
      else
        format.html { render :edit }
        format.json { render json: @quimicos_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quimicos_productos/1
  # DELETE /quimicos_productos/1.json
  def destroy
    @quimicos_producto.destroy
    respond_to do |format|
      format.html { redirect_to quimicos_productos_url, notice: 'Quimicos producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quimicos_producto
      @quimicos_producto = QuimicosProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quimicos_producto_params
      params.require(:quimicos_producto).permit(:video, :titulo, :linea_producto, :marca, :descripcion, :especificaciones_tecnicas, :presentacion, :precio)
    end
end
