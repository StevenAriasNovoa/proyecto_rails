class ProjectTechnologiesController < ApplicationController
  before_action :set_project_technology, only: %i[ show edit update destroy ]

  # GET /project_technologies or /project_technologies.json
  def index
    @project_technologies = ProjectTechnology.all
  end

  # GET /project_technologies/1 or /project_technologies/1.json
  def show
  end

  # GET /project_technologies/new
  def new
    @project_technology = ProjectTechnology.new
  end

  # GET /project_technologies/1/edit
  def edit
  end

  # POST /project_technologies or /project_technologies.json
  def create
    @project_technology = ProjectTechnology.new(project_technology_params)

    respond_to do |format|
      if @project_technology.save
        format.html { redirect_to project_technology_url(@project_technology), notice: "Project technology was successfully created." }
        format.json { render :show, status: :created, location: @project_technology }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project_technology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_technologies/1 or /project_technologies/1.json
  def update
    respond_to do |format|
      if @project_technology.update(project_technology_params)
        format.html { redirect_to project_technology_url(@project_technology), notice: "Project technology was successfully updated." }
        format.json { render :show, status: :ok, location: @project_technology }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project_technology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_technologies/1 or /project_technologies/1.json
  def destroy
    @project_technology.destroy

    respond_to do |format|
      format.html { redirect_to project_technologies_url, notice: "Project technology was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_technology
      @project_technology = ProjectTechnology.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_technology_params
      params.fetch(:project_technology, {})
    end
end
