class MytblsController < ApplicationController
  before_action :set_mytbl, only: [:show, :edit, :update, :destroy]

  # GET /mytbls
  # GET /mytbls.json
  def index
    @mytbls = Mytbl.all
  end

  # GET /mytbls/1
  # GET /mytbls/1.json
  def show
  end

  # GET /mytbls/new
  def new
    @mytbl = Mytbl.new
  end

  # GET /mytbls/1/edit
  def edit
  end

  # POST /mytbls
  # POST /mytbls.json
  def create
    @mytbl = Mytbl.new(mytbl_params)

    respond_to do |format|
      if @mytbl.save
        format.html { redirect_to @mytbl, notice: 'Mytbl was successfully created.' }
        format.json { render :show, status: :created, location: @mytbl }
      else
        format.html { render :new }
        format.json { render json: @mytbl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mytbls/1
  # PATCH/PUT /mytbls/1.json
  def update
    respond_to do |format|
      if @mytbl.update(mytbl_params)
        format.html { redirect_to @mytbl, notice: 'Mytbl was successfully updated.' }
        format.json { render :show, status: :ok, location: @mytbl }
      else
        format.html { render :edit }
        format.json { render json: @mytbl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mytbls/1
  # DELETE /mytbls/1.json
  def destroy
    @mytbl.destroy
    respond_to do |format|
      format.html { redirect_to mytbls_url, notice: 'Mytbl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mytbl
      @mytbl = Mytbl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mytbl_params
      params.require(:mytbl).permit(:email, :paswword, :hobby)
    end
end
