class AlgosController < ApplicationController
  # GET /algos
  # GET /algos.json
  def index
    @algos = Algo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @algos }
    end
  end

  # GET /algos/1
  # GET /algos/1.json
  def show
    @algo = Algo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @algo }
    end
  end

  # GET /algos/new
  # GET /algos/new.json
  def new
    @algo = Algo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @algo }
    end
  end

  # GET /algos/1/edit
  def edit
    @algo = Algo.find(params[:id])
  end

  # POST /algos
  # POST /algos.json
  def create
    @algo = Algo.new(params[:algo])

    respond_to do |format|
      if @algo.save
        format.html { redirect_to @algo, notice: 'Algo was successfully created.' }
        format.json { render json: @algo, status: :created, location: @algo }
      else
        format.html { render action: "new" }
        format.json { render json: @algo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /algos/1
  # PUT /algos/1.json
  def update
    @algo = Algo.find(params[:id])

    respond_to do |format|
      if @algo.update_attributes(params[:algo])
        format.html { redirect_to @algo, notice: 'Algo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @algo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /algos/1
  # DELETE /algos/1.json
  def destroy
    @algo = Algo.find(params[:id])
    @algo.destroy

    respond_to do |format|
      format.html { redirect_to algos_url }
      format.json { head :no_content }
    end
  end
end
