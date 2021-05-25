class RubyDataController < ApplicationController
  before_action :set_ruby_datum, only: %i[ show edit update destroy ]

  # GET /ruby_data or /ruby_data.json
  def index
    @ruby_data = RubyDatum.all
  end

  # GET /ruby_data/1 or /ruby_data/1.json
  def show
  end

  # GET /ruby_data/new
  def new
    @ruby_datum = RubyDatum.new
  end

  # GET /ruby_data/1/edit
  def edit
  end

  # POST /ruby_data or /ruby_data.json
  def create
    @ruby_datum = RubyDatum.new(ruby_datum_params)
    
    couldBeFloat = false
    couldBeInt = true

    if @ruby_datum.valInput.include? "."
      couldBeFloat = true
      couldBeInt = false
    end
    
    if couldBeInt
      @ruby_datum.rubyType = "Integer"
      !!Integer(@ruby_datum.valInput) rescue @ruby_datum.rubyType = "String"
    end

    if couldBeFloat
      @ruby_datum.rubyType = "Float"
      !!Float(@ruby_datum.valInput) rescue @ruby_datum.rubyType = "String"
    end

    respond_to do |format|
      if @ruby_datum.save
        format.html { redirect_to @ruby_datum, notice: "Ruby datum was successfully created." }
        format.json { render :show, status: :created, location: @ruby_datum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ruby_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruby_data/1 or /ruby_data/1.json
  def update
    respond_to do |format|
      if @ruby_datum.update(ruby_datum_params)
        format.html { redirect_to @ruby_datum, notice: "Ruby datum was successfully updated." }
        format.json { render :show, status: :ok, location: @ruby_datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ruby_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruby_data/1 or /ruby_data/1.json
  def destroy
    @ruby_datum.destroy
    respond_to do |format|
      format.html { redirect_to ruby_data_url, notice: "Ruby datum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruby_datum
      @ruby_datum = RubyDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ruby_datum_params
      params.require(:ruby_datum).permit(:valInput,:rubyType)
    end
end
