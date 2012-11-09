class CProvidersController < ApplicationController
  # GET /c_providers
  # GET /c_providers.json
  def index
    @c_providers = CProvider.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @c_providers }
    end
  end

  # GET /c_providers/1
  # GET /c_providers/1.json
  def show
    @c_provider = CProvider.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @c_provider }
    end
  end

  # GET /c_providers/new
  # GET /c_providers/new.json
  def new
    @c_provider = CProvider.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @c_provider }
    end
  end

  # GET /c_providers/1/edit
  def edit
    @c_provider = CProvider.find(params[:id])
  end

  # POST /c_providers
  # POST /c_providers.json
  def create
    @c_provider = CProvider.new(params[:c_provider])

    respond_to do |format|
      if @c_provider.save
        format.html { redirect_to @c_provider, notice: 'C provider was successfully created.' }
        format.json { render json: @c_provider, status: :created, location: @c_provider }
      else
        format.html { render action: "new" }
        format.json { render json: @c_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /c_providers/1
  # PUT /c_providers/1.json
  def update
    @c_provider = CProvider.find(params[:id])

    respond_to do |format|
      if @c_provider.update_attributes(params[:c_provider])
        format.html { redirect_to @c_provider, notice: 'C provider was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @c_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_providers/1
  # DELETE /c_providers/1.json
  def destroy
    @c_provider = CProvider.find(params[:id])
    @c_provider.destroy

    respond_to do |format|
      format.html { redirect_to c_providers_url }
      format.json { head :no_content }
    end
  end
end
