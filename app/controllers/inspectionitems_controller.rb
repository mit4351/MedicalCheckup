class InspectionitemsController < ApplicationController
  before_action :set_inspectionitem, only: [:show, :edit, :update, :destroy]
  before_action :authority_user, only: [:show, :edit, :update, :destroy]
  before_action :authority_user, only: [:index, :new, :create]

  # GET /inspectionitems
  # GET /inspectionitems.json
  def index
    @inspectionitems = Inspectionitem.all
  end

  # GET /inspectionitems/1
  # GET /inspectionitems/1.json
  def show
  end

  # GET /inspectionitems/new
  def new
    @inspectionitem = Inspectionitem.new
  end

  # GET /inspectionitems/1/edit
  def edit
  end

  # POST /inspectionitems
  # POST /inspectionitems.json
  def create
    @inspectionitem = Inspectionitem.new(inspectionitem_params)

    respond_to do |format|
      if @inspectionitem.save
        format.html { redirect_to @inspectionitem, notice: 'Inspectionitem was successfully created.' }
        format.json { render :show, status: :created, location: @inspectionitem }
      else
        format.html { render :new }
        format.json { render json: @inspectionitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inspectionitems/1
  # PATCH/PUT /inspectionitems/1.json
  def update
    respond_to do |format|
      if @inspectionitem.update(inspectionitem_params)
        format.html { redirect_to @inspectionitem, notice: 'Inspectionitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @inspectionitem }
      else
        format.html { render :edit }
        format.json { render json: @inspectionitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inspectionitems/1
  # DELETE /inspectionitems/1.json
  def destroy
    @inspectionitem.destroy
    respond_to do |format|
      format.html { redirect_to inspectionitems_url, notice: 'Inspectionitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspectionitem
      @inspectionitem = Inspectionitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inspectionitem_params
      params.require(:inspectionitem).permit(:number, :name, :amountofmone, :subsidy, :remarks, :hospitalflg, :deleteflg)
    end
end
