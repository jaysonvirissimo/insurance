class SalesOfficesController < ApplicationController
  before_action :set_sales_office, only: %i[ show edit update destroy ]

  # GET /sales_offices or /sales_offices.json
  def index
    @sales_offices = SalesOffice.all
  end

  # GET /sales_offices/1 or /sales_offices/1.json
  def show
  end

  # GET /sales_offices/new
  def new
    @sales_office = SalesOffice.new
  end

  # GET /sales_offices/1/edit
  def edit
  end

  # POST /sales_offices or /sales_offices.json
  def create
    @sales_office = SalesOffice.new(sales_office_params)

    respond_to do |format|
      if @sales_office.save
        format.html { redirect_to sales_office_url(@sales_office), notice: "Sales office was successfully created." }
        format.json { render :show, status: :created, location: @sales_office }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sales_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_offices/1 or /sales_offices/1.json
  def update
    respond_to do |format|
      if @sales_office.update(sales_office_params)
        format.html { redirect_to sales_office_url(@sales_office), notice: "Sales office was successfully updated." }
        format.json { render :show, status: :ok, location: @sales_office }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sales_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_offices/1 or /sales_offices/1.json
  def destroy
    @sales_office.destroy

    respond_to do |format|
      format.html { redirect_to sales_offices_url, notice: "Sales office was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_office
      @sales_office = SalesOffice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sales_office_params
      params.require(:sales_office).permit(:state)
    end
end
