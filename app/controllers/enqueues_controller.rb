class EnqueuesController < ApplicationController
  before_action :set_enqueue, only: [:show, :edit, :update, :destroy]

  # GET /enqueues
  # GET /enqueues.json
  def index
    @enqueues = Enqueue.all
  end

  # GET /enqueues/1
  # GET /enqueues/1.json
  def show
  end

  # GET /enqueues/new
  def new
    @enqueue = Enqueue.new
  end

  # GET /enqueues/1/edit
  def edit
  end

  # POST /enqueues
  # POST /enqueues.json
  def create
    @enqueue = Enqueue.new(enqueue_params)

    respond_to do |format|
      if @enqueue.save
        format.html { redirect_to @enqueue, notice: 'Enqueue was successfully created.' }
        format.json { render :show, status: :created, location: @enqueue }
      else
        format.html { render :new }
        format.json { render json: @enqueue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enqueues/1
  # PATCH/PUT /enqueues/1.json
  def update
    respond_to do |format|
      if @enqueue.update(enqueue_params)
        format.html { redirect_to @enqueue, notice: 'Enqueue was successfully updated.' }
        format.json { render :show, status: :ok, location: @enqueue }
      else
        format.html { render :edit }
        format.json { render json: @enqueue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enqueues/1
  # DELETE /enqueues/1.json
  def destroy
    @enqueue.destroy
    respond_to do |format|
      format.html { redirect_to enqueues_url, notice: 'Enqueue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enqueue
      @enqueue = Enqueue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enqueue_params
      params.require(:enqueue).permit(:name, :description, :user_id)
    end
end
