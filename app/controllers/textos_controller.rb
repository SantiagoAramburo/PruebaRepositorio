class TextosController < ApplicationController
  before_action :set_texto, only: %i[ show edit update destroy ]

  # GET /textos or /textos.json
  def index
    @textos = Texto.all
  end

  # GET /textos/1 or /textos/1.json
  def show
  end

  # GET /textos/new
  def new
    @texto = Texto.new
  end

  # GET /textos/1/edit
  def edit
  end

  # POST /textos or /textos.json
  def create
    @texto = Texto.new(texto_params)

    respond_to do |format|
      if @texto.save
        format.html { redirect_to @texto, notice: "Texto was successfully created." }
        format.json { render :show, status: :created, location: @texto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @texto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /textos/1 or /textos/1.json
  def update
    respond_to do |format|
      if @texto.update(texto_params)
        format.html { redirect_to @texto, notice: "Texto was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @texto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @texto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /textos/1 or /textos/1.json
  def destroy
    @texto.destroy!

    respond_to do |format|
      format.html { redirect_to textos_path, notice: "Texto was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_texto
      @texto = Texto.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def texto_params
      params.expect(texto: [ :titulo, :cuerpo, :autor ])
    end
end
