class MaquinariaSerigrafiaProductosController < ApplicationController
  before_action :set_maquinaria_serigrafia_producto, only: [:show, :edit, :update, :destroy]

  # GET /maquinaria_serigrafia_productos
  # GET /maquinaria_serigrafia_productos.json
  def index
    @maquinaria_serigrafia_productos = MaquinariaSerigrafiaProducto.all
  end

  # GET /maquinaria_serigrafia_productos/1
  # GET /maquinaria_serigrafia_productos/1.json
  def show
  end

  # GET /maquinaria_serigrafia_productos/new
  def new
    @maquinaria_serigrafia_producto = MaquinariaSerigrafiaProducto.new
  end

  # GET /maquinaria_serigrafia_productos/1/edit
  def edit
  end

  # POST /maquinaria_serigrafia_productos
  # POST /maquinaria_serigrafia_productos.json
  def create
    @maquinaria_serigrafia_producto = MaquinariaSerigrafiaProducto.new(maquinaria_serigrafia_producto_params)

    respond_to do |format|
      if @maquinaria_serigrafia_producto.save
        format.html { redirect_to @maquinaria_serigrafia_producto, notice: 'Maquinaria serigrafia producto was successfully created.' }
        format.json { render :show, status: :created, location: @maquinaria_serigrafia_producto }
      else
        format.html { render :new }
        format.json { render json: @maquinaria_serigrafia_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maquinaria_serigrafia_productos/1
  # PATCH/PUT /maquinaria_serigrafia_productos/1.json
  def update
    respond_to do |format|
      if @maquinaria_serigrafia_producto.update(maquinaria_serigrafia_producto_params)
        format.html { redirect_to @maquinaria_serigrafia_producto, notice: 'Maquinaria serigrafia producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @maquinaria_serigrafia_producto }
      else
        format.html { render :edit }
        format.json { render json: @maquinaria_serigrafia_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maquinaria_serigrafia_productos/1
  # DELETE /maquinaria_serigrafia_productos/1.json
  def destroy
    @maquinaria_serigrafia_producto.destroy
    respond_to do |format|
      format.html { redirect_to maquinaria_serigrafia_productos_url, notice: 'Maquinaria serigrafia producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maquinaria_serigrafia_producto
      @maquinaria_serigrafia_producto = MaquinariaSerigrafiaProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maquinaria_serigrafia_producto_params
      params.require(:maquinaria_serigrafia_producto).permit(:video, :titulo, :linea_producto, :marca, :descripcion, :especificaciones_tecnicas, :presentacion, :precio)
    end
end
