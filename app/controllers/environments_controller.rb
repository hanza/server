class EnvironmentsController < ApplicationController
  before_action :set_environment, only: [:show, :edit, :update, :destroy]

  # GET /environments
  def index
    @environments = Environment.for_org(session_org).all
  end

  # GET /environments/1
  def show
  end

  # GET /environments/new
  def new
    @environment = Environment.new
  end

  # GET /environments/1/edit
  def edit
  end

  # POST /environments
  def create
    @environment = Environment.new(environment_params)

    if @environment.save
      redirect_to @environment, notice: 'Environment was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /environments/1
  def update
    if @environment.update(environment_params)
      redirect_to @environment, notice: 'Environment was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /environments/1
  def destroy
    @environment.destroy
    redirect_to environments_url, notice: 'Environment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_environment
      @environment = Environment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def environment_params
      params.require(:environment).allow(:name, :template_id)
    end
end
