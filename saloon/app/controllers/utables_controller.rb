class UtablesController < ApplicationController
  before_action :set_utable, only: [:show, :edit, :update, :destroy]

  # GET /utables
  # GET /utables.json
  def index
    @utables = Utable.all
  end

  # GET /utables/1
  # GET /utables/1.json
  def show
  end

  # GET /utables/new
  def new
    @utable = Utable.new
  end

  # GET /utables/1/edit
  def edit
  end

  # POST /utables
  # POST /utables.json
  def create
    @utable = Utable.new(utable_params)

    respond_to do |format|
      if @utable.save
        format.html { redirect_to @utable, notice: 'Utable was successfully created.' }
        format.json { render :show, status: :created, location: @utable }
      else
        format.html { render :new }
        format.json { render json: @utable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utables/1
  # PATCH/PUT /utables/1.json
  def update
    respond_to do |format|
      if @utable.update(utable_params)
        format.html { redirect_to @utable, notice: 'Utable was successfully updated.' }
        format.json { render :show, status: :ok, location: @utable }
      else
        format.html { render :edit }
        format.json { render json: @utable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utables/1
  # DELETE /utables/1.json
  def destroy
    @utable.destroy
    respond_to do |format|
      format.html { redirect_to utables_url, notice: 'Utable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utable
      @utable = Utable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def utable_params
      params.require(:utable).permit(:name, :number, :address)
    end
end
