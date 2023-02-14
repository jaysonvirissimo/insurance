class SalesPeopleController < ApplicationController
  before_action :set_sales_person, only: %i[ show edit update destroy ]

  # GET /sales_people or /sales_people.json
  def index
    @sales_people = SalesPerson.all
  end

  # GET /sales_people/1 or /sales_people/1.json
  def show
  end

  # GET /sales_people/new
  def new
    @sales_person = SalesPerson.new
  end

  # GET /sales_people/1/edit
  def edit
  end

  # POST /sales_people or /sales_people.json
  def create
    @sales_person = SalesPerson.new(sales_person_params)

    respond_to do |format|
      if @sales_person.save
        format.html { redirect_to sales_person_url(@sales_person), notice: "Sales person was successfully created." }
        format.json { render :show, status: :created, location: @sales_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sales_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_people/1 or /sales_people/1.json
  def update
    respond_to do |format|
      if @sales_person.update(sales_person_params)
        format.html { redirect_to sales_person_url(@sales_person), notice: "Sales person was successfully updated." }
        format.json { render :show, status: :ok, location: @sales_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sales_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_people/1 or /sales_people/1.json
  def destroy
    @sales_person.destroy

    respond_to do |format|
      format.html { redirect_to sales_people_url, notice: "Sales person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_person
      @sales_person = SalesPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sales_person_params
      params.require(:sales_person).permit(:name, :sales_office_id)
    end
end
