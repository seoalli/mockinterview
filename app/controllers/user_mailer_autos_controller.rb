class UserMailerAutosController < ApplicationController
  before_action :set_user_mailer_auto, only: [:show, :edit, :update, :destroy]

  # GET /user_mailer_autos
  # GET /user_mailer_autos.json
  def index
    @user_mailer_autos = UserMailerAuto.all
  end

  # GET /user_mailer_autos/1
  # GET /user_mailer_autos/1.json
  def show
  end

  # GET /user_mailer_autos/new
  def new
    @user_mailer_auto = UserMailerAuto.new
  end

  # GET /user_mailer_autos/1/edit
  def edit
  end

  # POST /user_mailer_autos
  # POST /user_mailer_autos.json
  def create
    @user_mailer_auto = UserMailerAuto.new(user_mailer_auto_params)

    respond_to do |format|
      if @user_mailer_auto.save
        format.html { redirect_to @user_mailer_auto, notice: 'User mailer auto was successfully created.' }
        format.json { render :show, status: :created, location: @user_mailer_auto }
      else
        format.html { render :new }
        format.json { render json: @user_mailer_auto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_mailer_autos/1
  # PATCH/PUT /user_mailer_autos/1.json
  def update
    respond_to do |format|
      if @user_mailer_auto.update(user_mailer_auto_params)
        format.html { redirect_to @user_mailer_auto, notice: 'User mailer auto was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_mailer_auto }
      else
        format.html { render :edit }
        format.json { render json: @user_mailer_auto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_mailer_autos/1
  # DELETE /user_mailer_autos/1.json
  def destroy
    @user_mailer_auto.destroy
    respond_to do |format|
      format.html { redirect_to user_mailer_autos_url, notice: 'User mailer auto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_mailer_auto
      @user_mailer_auto = UserMailerAuto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_mailer_auto_params
      params[:user_mailer_auto]
    end
end
