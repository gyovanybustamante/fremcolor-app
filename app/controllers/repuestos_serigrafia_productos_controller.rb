class RepuestosSerigrafiaProductosController < ApplicationController
  before_action :set_repuestos_serigrafia_producto, only: [:show, :edit, :update, :destroy]

  # GET /repuestos_serigrafia_productos
  # GET /repuestos_serigrafia_productos.json
  def index
    @repuestos_serigrafia_productos = RepuestosSerigrafiaProducto.all
  end

  # GET /repuestos_serigrafia_productos/1
  # GET /repuestos_serigrafia_productos/1.json
  def show
  end

  # GET /repuestos_serigrafia_productos/new
  def new
    @repuestos_serigrafia_producto = RepuestosSerigrafiaProducto.new
  end

  # GET /repuestos_serigrafia_productos/1/edit
  def edit
  end

  # POST /repuestos_serigrafia_productos
  # POST /repuestos_serigrafia_productos.json
  def create
    @repuestos_serigrafia_producto = RepuestosSerigrafiaProducto.new(repuestos_serigrafia_producto_params)

    respond_to do |format|
      if @repuestos_serigrafia_producto.save
        format.html { redirect_to @repuestos_serigrafia_producto, notice: 'Repuestos serigrafia producto was successfully created.' }
        format.json { render :show, status: :created, location: @repuestos_serigrafia_producto }
      else
        format.html { render :new }
        format.json { render json: @repuestos_serigrafia_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repuestos_serigrafia_productos/1
  # PATCH/PUT /repuestos_serigrafia_productos/1.json
  def update
    respond_to do |format|
      if @repuestos_serigrafia_producto.update(repuestos_serigrafia_producto_params)
        format.html { redirect_to @repuestos_serigrafia_producto, notice: 'Repuestos serigrafia producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @repuestos_serigrafia_producto }
      else
        format.html { render :edit }
        format.json { render json: @repuestos_serigrafia_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repuestos_serigrafia_productos/1
  # DELETE /repuestos_serigrafia_productos/1.json
  def destroy
    @repuestos_serigrafia_producto.destroy
    respond_to do |format|
      format.html { redirect_to repuestos_serigrafia_productos_url, notice: 'Repuestos serigrafia producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repuestos_serigrafia_producto
      @repuestos_serigrafia_producto = RepuestosSerigrafiaProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repuestos_serigrafia_producto_params
      params.require(:repuestos_serigrafia_producto).permit(:video, :titulo, :linea_producto, :marca, :descripcion, :especificaciones_tecnicas, :presentacion, :precio)
    end
end
