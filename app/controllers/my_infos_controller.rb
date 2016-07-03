class MyInfosController < ApplicationController
  before_action :set_my_info, only: [:show, :edit, :update, :destroy]

  # GET /my_infos
  # GET /my_infos.json
  def index
    @my_infos = MyInfo.all
  end

  # GET /my_infos/1
  # GET /my_infos/1.json
  def show
  end

  # GET /my_infos/new
  def new
    @my_info = MyInfo.new
  end

  # GET /my_infos/1/edit
  def edit
  end

  # POST /my_infos
  # POST /my_infos.json
  def create
    @my_info = MyInfo.new(my_info_params)

    respond_to do |format|
      if @my_info.save
        format.html { redirect_to @my_info, notice: 'My info was successfully created.' }
        format.json { render :show, status: :created, location: @my_info }
      else
        format.html { render :new }
        format.json { render json: @my_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_infos/1
  # PATCH/PUT /my_infos/1.json
  def update
    respond_to do |format|
      if @my_info.update(my_info_params)
        format.html { redirect_to @my_info, notice: 'My info was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_info }
      else
        format.html { render :edit }
        format.json { render json: @my_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_infos/1
  # DELETE /my_infos/1.json
  def destroy
    @my_info.destroy
    respond_to do |format|
      format.html { redirect_to my_infos_url, notice: 'My info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_info
      @my_info = MyInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_info_params
      params.fetch(:my_info, {})
    end
end
