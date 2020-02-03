class ArticallsController < ApplicationController
  before_action :set_articall, only: [:show, :edit, :update, :destroy]

  # GET /articalls
  # GET /articalls.json
  def index
    @articalls = Articall.all
  end

  # GET /articalls/1
  # GET /articalls/1.json
  def show
  end

  # GET /articalls/new
  def new
    @articall = Articall.new
  end

  # GET /articalls/1/edit
  def edit
  end

  # POST /articalls
  # POST /articalls.json
  def create
    @articall = Articall.new(articall_params)

    respond_to do |format|
      if @articall.save
        format.html { redirect_to @articall, notice: 'Articall was successfully created.' }
        format.json { render :show, status: :created, location: @articall }
      else
        format.html { render :new }
        format.json { render json: @articall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articalls/1
  # PATCH/PUT /articalls/1.json
  def update
    respond_to do |format|
      if @articall.update(articall_params)
        format.html { redirect_to @articall, notice: 'Articall was successfully updated.' }
        format.json { render :show, status: :ok, location: @articall }
      else
        format.html { render :edit }
        format.json { render json: @articall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articalls/1
  # DELETE /articalls/1.json
  def destroy
    @articall.destroy
    respond_to do |format|
      format.html { redirect_to articalls_url, notice: 'Articall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articall
      @articall = Articall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articall_params
      params.require(:articall).permit(:name, :category_id)
    end
end
