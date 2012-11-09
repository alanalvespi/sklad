class StatusOrdersController < ApplicationController
  # GET /status_orders
  # GET /status_orders.json
  def index
    @status_orders = StatusOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_orders }
    end
  end

  # GET /status_orders/1
  # GET /status_orders/1.json
  def show
    @status_order = StatusOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_order }
    end
  end

  # GET /status_orders/new
  # GET /status_orders/new.json
  def new
    @status_order = StatusOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_order }
    end
  end

  # GET /status_orders/1/edit
  def edit
    @status_order = StatusOrder.find(params[:id])
  end

  # POST /status_orders
  # POST /status_orders.json
  def create
    @status_order = StatusOrder.new(params[:status_order])

    respond_to do |format|
      if @status_order.save
        format.html { redirect_to @status_order, notice: 'Status order was successfully created.' }
        format.json { render json: @status_order, status: :created, location: @status_order }
      else
        format.html { render action: "new" }
        format.json { render json: @status_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_orders/1
  # PUT /status_orders/1.json
  def update
    @status_order = StatusOrder.find(params[:id])

    respond_to do |format|
      if @status_order.update_attributes(params[:status_order])
        format.html { redirect_to @status_order, notice: 'Status order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_orders/1
  # DELETE /status_orders/1.json
  def destroy
    @status_order = StatusOrder.find(params[:id])
    @status_order.destroy

    respond_to do |format|
      format.html { redirect_to status_orders_url }
      format.json { head :no_content }
    end
  end
end
