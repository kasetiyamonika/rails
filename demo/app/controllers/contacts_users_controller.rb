class ContactsUsersController < ApplicationController
  before_action :set_contacts_user, only: [:show, :edit, :update, :destroy]

  # GET /contacts_users
  # GET /contacts_users.json
  def index
    @contacts_users = ContactsUser.all
  end

  # GET /contacts_users/1
  # GET /contacts_users/1.json
  def show
  end

  # GET /contacts_users/new
  def new
    @contacts_user = ContactsUser.new
  end

  # GET /contacts_users/1/edit
  def edit
  end

  # POST /contacts_users
  # POST /contacts_users.json
  def create
    @contacts_user = ContactsUser.new(contacts_user_params)

    respond_to do |format|
      if @contacts_user.save
        format.html { redirect_to @contacts_user, notice: 'Contacts user was successfully created.' }
        format.json { render :show, status: :created, location: @contacts_user }
      else
        format.html { render :new }
        format.json { render json: @contacts_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts_users/1
  # PATCH/PUT /contacts_users/1.json
  def update
    respond_to do |format|
      if @contacts_user.update(contacts_user_params)
        format.html { redirect_to @contacts_user, notice: 'Contacts user was successfully updated.' }
        format.json { render :show, status: :ok, location: @contacts_user }
      else
        format.html { render :edit }
        format.json { render json: @contacts_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts_users/1
  # DELETE /contacts_users/1.json
  def destroy
    @contacts_user.destroy
    respond_to do |format|
      format.html { redirect_to contacts_users_url, notice: 'Contacts user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contacts_user
      @contacts_user = ContactsUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contacts_user_params
      params.require(:contacts_user).permit(:user_id, :contact_id)
    end
end
