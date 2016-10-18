class BgroupsController < ApplicationController
  before_action :set_bgroup, only: [:show, :edit, :update, :destroy]

  # GET /bgroups
  # GET /bgroups.json
  def index
    @bgroups = Bgroup.all
  end

  # GET /bgroups/1
  # GET /bgroups/1.json
  def show
  end

  # GET /bgroups/new
  def new
    @bgroup = Bgroup.new
  end

  # GET /bgroups/1/edit
  def edit
  end

  # POST /bgroups
  # POST /bgroups.json
  def create
    @bgroup = Bgroup.new(bgroup_params)

    respond_to do |format|
      if @bgroup.save
        format.html { redirect_to @bgroup, notice: 'Bgroup was successfully created.' }
        format.json { render :show, status: :created, location: @bgroup }
      else
        format.html { render :new }
        format.json { render json: @bgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bgroups/1
  # PATCH/PUT /bgroups/1.json
  def update
    respond_to do |format|
      if @bgroup.update(bgroup_params)
        format.html { redirect_to @bgroup, notice: 'Bgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @bgroup }
      else
        format.html { render :edit }
        format.json { render json: @bgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bgroups/1
  # DELETE /bgroups/1.json
  def destroy
    @bgroup.destroy
    respond_to do |format|
      format.html { redirect_to bgroups_url, notice: 'Bgroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bgroup
      @bgroup = Bgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bgroup_params
      params.require(:bgroup).permit(:a_positive, :b_positive, :o_positive, :ab_positive, :a_negative, :b_negative, :o_negative, :ab_negative, :center_id)
    end
end
