class UserUserTypesController < ApplicationController
  before_action :set_user_user_type, only: %i[ show edit update destroy ]

  # GET /user_user_types or /user_user_types.json
  def index
    @user_user_types = UserUserType.all
  end

  # GET /user_user_types/1 or /user_user_types/1.json
  def show
  end

  # GET /user_user_types/new
  def new
    @user_user_type = UserUserType.new
  end

  # GET /user_user_types/1/edit
  def edit
  end

  # POST /user_user_types or /user_user_types.json
  def create
    @user_user_type = UserUserType.new(user_user_type_params)

    respond_to do |format|
      if @user_user_type.save
        format.html { redirect_to user_user_type_url(@user_user_type), notice: "User user type was successfully created." }
        format.json { render :show, status: :created, location: @user_user_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_user_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_user_types/1 or /user_user_types/1.json
  def update
    respond_to do |format|
      if @user_user_type.update(user_user_type_params)
        format.html { redirect_to user_user_type_url(@user_user_type), notice: "User user type was successfully updated." }
        format.json { render :show, status: :ok, location: @user_user_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_user_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_user_types/1 or /user_user_types/1.json
  def destroy
    @user_user_type.destroy

    respond_to do |format|
      format.html { redirect_to user_user_types_url, notice: "User user type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_user_type
      @user_user_type = UserUserType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_user_type_params
      params.fetch(:user_user_type, {})
    end
end
