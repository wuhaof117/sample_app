class WuhaosController < ApplicationController
  # GET /wuhaos
  # GET /wuhaos.json
  def index
    @wuhaos = Wuhao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wuhaos }
    end
  end

  # GET /wuhaos/1
  # GET /wuhaos/1.json
  def show
    @wuhao = Wuhao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wuhao }
    end
  end

  # GET /wuhaos/new
  # GET /wuhaos/new.json
  def new
    @wuhao = Wuhao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wuhao }
    end
  end

  # GET /wuhaos/1/edit
  def edit
    @wuhao = Wuhao.find(params[:id])
  end

  # POST /wuhaos
  # POST /wuhaos.json
  def create
    @wuhao = Wuhao.new(params[:wuhao])

    respond_to do |format|
      if @wuhao.save
        format.html { redirect_to @wuhao, notice: 'Wuhao was successfully created.' }
        format.json { render json: @wuhao, status: :created, location: @wuhao }
      else
        format.html { render action: "new" }
        format.json { render json: @wuhao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wuhaos/1
  # PUT /wuhaos/1.json
  def update
    @wuhao = Wuhao.find(params[:id])

    respond_to do |format|
      if @wuhao.update_attributes(params[:wuhao])
        format.html { redirect_to @wuhao, notice: 'Wuhao was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @wuhao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wuhaos/1
  # DELETE /wuhaos/1.json
  def destroy
    @wuhao = Wuhao.find(params[:id])
    @wuhao.destroy

    respond_to do |format|
      format.html { redirect_to wuhaos_url }
      format.json { head :ok }
    end
  end
end
