class TintaSerigrafiaProductosController < ApplicationController
  before_action :set_tinta_serigrafia_producto, only: [:show, :edit, :update, :destroy]

  # GET /tinta_serigrafia_productos
  # GET /tinta_serigrafia_productos.json
  def index
    @tinta_serigrafia_productos = TintaSerigrafiaProducto.all
  end

  # GET /tinta_serigrafia_productos/1
  # GET /tinta_serigrafia_productos/1.json
  def show
  end

  # GET /tinta_serigrafia_productos/new
  def new
    @tinta_serigrafia_producto = TintaSerigrafiaProducto.new
  end

  # GET /tinta_serigrafia_productos/1/edit
  def edit
  end

  # POST /tinta_serigrafia_productos
  # POST /tinta_serigrafia_productos.json
  def create
    @tinta_serigrafia_producto = TintaSerigrafiaProducto.new(tinta_serigrafia_producto_params)

    respond_to do |format|
      if @tinta_serigrafia_producto.save
        format.html { redirect_to @tinta_serigrafia_producto, notice: 'Tinta serigrafia producto was successfully created.' }
        format.json { render :show, status: :created, location: @tinta_serigrafia_producto }
      else
        format.html { render :new }
        format.json { render json: @tinta_serigrafia_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tinta_serigrafia_productos/1
  # PATCH/PUT /tinta_serigrafia_productos/1.json
  def update
    respond_to do |format|
      if @tinta_serigrafia_producto.update(tinta_serigrafia_producto_params)
        format.html { redirect_to @tinta_serigrafia_producto, notice: 'Tinta serigrafia producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @tinta_serigrafia_producto }
      else
        format.html { render :edit }
        format.json { render json: @tinta_serigrafia_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tinta_serigrafia_productos/1
  # DELETE /tinta_serigrafia_productos/1.json
  def destroy
    @tinta_serigrafia_producto.destroy
    respond_to do |format|
      format.html { redirect_to tinta_serigrafia_productos_url, notice: 'Tinta serigrafia producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tinta_serigrafia_producto
      @tinta_serigrafia_producto = TintaSerigrafiaProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tinta_serigrafia_producto_params
      params.require(:tinta_serigrafia_producto).permit(:video, :titulo, :linea_producto, :marca, :descripcion, :especificaciones_tecnicas, :presentacion, :precio, :titulo_grupo_color_uno, :titulo_grupo_color_dos, :titulo_grupo_color_tres, :titulo_grupo_color_cuatro, :titulo_grupo_color_cinco, :titulo_grupo_color_seis, :titulo_grupo_color_siete, :titulo_grupo_color_ocho, :titulo_grupo_color_nueve, :titulo_grupo_color_diez, :titulo_grupo_color_once, :titulo_grupo_color_doce)
    end
end
