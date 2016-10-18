class BranchManagersController < ApplicationController
  before_action :set_branch_manager, only: [:show, :edit, :update, :destroy]

  # GET /branch_managers
  # GET /branch_managers.json
  def index
    @branch_managers = BranchManager.all
  end

  # GET /branch_managers/1
  # GET /branch_managers/1.json
  def show
  end

  # GET /branch_managers/new
  def new
    @branch_manager = BranchManager.new
  end

  # GET /branch_managers/1/edit
  def edit
  end

  # POST /branch_managers
  # POST /branch_managers.json
  def create
    @branch_manager = BranchManager.new(branch_manager_params)

    respond_to do |format|
      if @branch_manager.save
        format.html { redirect_to @branch_manager, notice: 'Branch manager was successfully created.' }
        format.json { render :show, status: :created, location: @branch_manager }
      else
        format.html { render :new }
        format.json { render json: @branch_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /branch_managers/1
  # PATCH/PUT /branch_managers/1.json
  def update
    respond_to do |format|
      if @branch_manager.update(branch_manager_params)
        format.html { redirect_to @branch_manager, notice: 'Branch manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @branch_manager }
      else
        format.html { render :edit }
        format.json { render json: @branch_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /branch_managers/1
  # DELETE /branch_managers/1.json
  def destroy
    @branch_manager.destroy
    respond_to do |format|
      format.html { redirect_to branch_managers_url, notice: 'Branch manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_branch_manager
      @branch_manager = BranchManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def branch_manager_params
      params.require(:branch_manager).permit(:name)
    end
end
