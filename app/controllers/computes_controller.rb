class ComputesController < ApplicationController
  before_action :set_compute, only: [:show, :edit, :update, :destroy]

  # GET /computes
  def index
    @computes = Compute.for_org(session_org).all
  end

  # GET /computes/1
  def show
  end

  # GET /computes/new
  def new
    @compute = Compute.new
  end

  # GET /computes/1/edit
  def edit
  end

  # POST /computes
  def create
    @compute = Compute.new(compute_params)

    if @compute.save
      redirect_to @compute, notice: 'Compute was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /computes/1
  def update
    if @compute.update(compute_params)
      redirect_to @compute, notice: 'Compute was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /computes/1
  def destroy
    @compute.destroy
    redirect_to computes_url, notice: 'Compute was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compute
      @compute = Compute.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def compute_params
      params[:compute]
    end
end
