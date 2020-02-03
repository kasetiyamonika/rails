class EmailsUsersController < ApplicationController
  before_action :set_emails_user, only: [:show, :edit, :update, :destroy, :emails_user]

  # GET /emails_users
  # GET /emails_users.json
  def index
    @emails_users = EmailsUser.all
  end

  # GET /emails_users/1
  # GET /emails_users/1.json
  def show
  end

  # GET /emails_users/new
  def new
    @emails_user = EmailsUser.new
  end

  # GET /emails_users/1/edit
  def edit
  end

  # POST /emails_users
  # POST /emails_users.json
  def create
    @emails_user = EmailsUser.new(emails_user_params)

    respond_to do |format|
      if @emails_user.save
        format.html { redirect_to @emails_user, notice: 'Emails user was successfully created.' }
        format.json { render :show, status: :created, location: @emails_user }
      else
        format.html { render :new }
        format.json { render json: @emails_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emails_users/1
  # PATCH/PUT /emails_users/1.json
  def update
    respond_to do |format|
      if @emails_user.update(emails_user_params)
        format.html { redirect_to @emails_user, notice: 'Emails user was successfully updated.' }
        format.json { render :show, status: :ok, location: @emails_user }
      else
        format.html { render :edit }
        format.json { render json: @emails_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emails_users/1
  # DELETE /emails_users/1.json
  def destroy
    @emails_user.destroy
    respond_to do |format|
      format.html { redirect_to emails_users_url, notice: 'Emails user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emails_user
      @emails_user = EmailsUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emails_user_params
      params.require(:emails_user).permit(:user_id, :email_id)
    end
end
