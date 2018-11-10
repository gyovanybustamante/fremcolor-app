class QuimicosSerigrafiaProductosController < ApplicationController
  before_action :set_quimicos_serigrafia_producto, only: [:show, :edit, :update, :destroy]

  # GET /quimicos_serigrafia_productos
  # GET /quimicos_serigrafia_productos.json
  def index
    @quimicos_serigrafia_productos = QuimicosSerigrafiaProducto.all
  end

  # GET /quimicos_serigrafia_productos/1
  # GET /quimicos_serigrafia_productos/1.json
  def show
  end

  # GET /quimicos_serigrafia_productos/new
  def new
    @quimicos_serigrafia_producto = QuimicosSerigrafiaProducto.new
  end

  # GET /quimicos_serigrafia_productos/1/edit
  def edit
  end

  # POST /quimicos_serigrafia_productos
  # POST /quimicos_serigrafia_productos.json
  def create
    @quimicos_serigrafia_producto = QuimicosSerigrafiaProducto.new(quimicos_serigrafia_producto_params)

    respond_to do |format|
      if @quimicos_serigrafia_producto.save
        format.html { redirect_to @quimicos_serigrafia_producto, notice: 'Quimicos serigrafia producto was successfully created.' }
        format.json { render :show, status: :created, location: @quimicos_serigrafia_producto }
      else
        format.html { render :new }
        format.json { render json: @quimicos_serigrafia_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quimicos_serigrafia_productos/1
  # PATCH/PUT /quimicos_serigrafia_productos/1.json
  def update
    respond_to do |format|
      if @quimicos_serigrafia_producto.update(quimicos_serigrafia_producto_params)
        format.html { redirect_to @quimicos_serigrafia_producto, notice: 'Quimicos serigrafia producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @quimicos_serigrafia_producto }
      else
        format.html { render :edit }
        format.json { render json: @quimicos_serigrafia_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quimicos_serigrafia_productos/1
  # DELETE /quimicos_serigrafia_productos/1.json
  def destroy
    @quimicos_serigrafia_producto.destroy
    respond_to do |format|
      format.html { redirect_to quimicos_serigrafia_productos_url, notice: 'Quimicos serigrafia producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quimicos_serigrafia_producto
      @quimicos_serigrafia_producto = QuimicosSerigrafiaProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quimicos_serigrafia_producto_params
      params.require(:quimicos_serigrafia_producto).permit(:video, :titulo, :linea_producto, :marca, :descripcion, :especificaciones_tecnicas, :presentacion, :precio)
    end
end
