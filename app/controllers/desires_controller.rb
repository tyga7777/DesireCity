class DesiresController < ApplicationController
  before_action :authenticate_user!
  before_action :set_desire, only: [:show, :edit, :update, :destroy]

  # GET /desires
  # GET /desires.json
  def index
    @desires = current_user.desires
  end

  # GET /desires/1
  # GET /desires/1.json
  def show
  end

  # GET /desires/new
  def new
    @desire = Desire.new
  end

  # GET /desires/1/edit
  def edit
  end

  # POST /desires
  # POST /desires.json
  def create
    @desire = Desire.new(desire_params)
    @desire.user_id = current_user.id
    respond_to do |format|
      if @desire.save
        format.html { redirect_to @desire, notice: 'Desire was successfully created.' }
        format.json { render :show, status: :created, location: @desire }
      else
        format.html { render :new }
        format.json { render json: @desire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desires/1
  # PATCH/PUT /desires/1.json
  def update
    respond_to do |format|
      if @desire.update(desire_params)
        format.html { redirect_to @desire, notice: 'Desire was successfully updated.' }
        format.json { render :show, status: :ok, location: @desire }
      else
        format.html { render :edit }
        format.json { render json: @desire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desires/1
  # DELETE /desires/1.json
  def destroy
    @desire.destroy
    respond_to do |format|
      format.html { redirect_to desires_url, notice: 'Desire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desire
      @desire = current_user.desires.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def desire_params
      params.require(:desire).permit(:user_id, :title, :todo, :status)
    end
end
