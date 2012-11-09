class IncomestocksController < ApplicationController
  # GET /incomestocks
  # GET /incomestocks.json
  def index
    @incomestocks = Incomestock.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @incomestocks }
    end
  end

  # GET /incomestocks/1
  # GET /incomestocks/1.json
  def show
    @incomestock = Incomestock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @incomestock }
    end
  end

  # GET /incomestocks/new
  # GET /incomestocks/new.json
  def new
    @incomestock = Incomestock.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @incomestock }
    end
  end

  # GET /incomestocks/1/edit
  def edit
    @incomestock = Incomestock.find(params[:id])
  end

  # POST /incomestocks
  # POST /incomestocks.json
  def create
    @incomestock = Incomestock.new(params[:incomestock])

    respond_to do |format|
      if @incomestock.save
        format.html { redirect_to @incomestock, notice: 'Incomestock was successfully created.' }
        format.json { render json: @incomestock, status: :created, location: @incomestock }
      else
        format.html { render action: "new" }
        format.json { render json: @incomestock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /incomestocks/1
  # PUT /incomestocks/1.json
  def update
    @incomestock = Incomestock.find(params[:id])

    respond_to do |format|
      if @incomestock.update_attributes(params[:incomestock])
        format.html { redirect_to @incomestock, notice: 'Incomestock was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @incomestock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incomestocks/1
  # DELETE /incomestocks/1.json
  def destroy
    @incomestock = Incomestock.find(params[:id])
    @incomestock.destroy

    respond_to do |format|
      format.html { redirect_to incomestocks_url }
      format.json { head :no_content }
    end
  end
end
