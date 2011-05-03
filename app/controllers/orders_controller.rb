class OrdersController < ApplicationController
  # GET /orders
  # GET /orders.xml
  def index
    @orders = Order.all
    session[:cart] = nil if session[:cart]

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.xml
  def show
    @order = Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.xml
  def new

    respond_to do |format|
      if session[:cart] && !session[:cart].nil?
        @order = Order.new
        format.html # new.html.erb
        format.xml  { render :xml => @order }
      else
        flash[:notice] = "请选择订单项目"
        format.html {redirect_to :back}
      end
    end
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # POST /orders
  # POST /orders.xml
  def create
    @order =  Order.new(params[:order]) do |order|
      order.employee_id = session[:user].id
    end
    @order.build_order_details(params[:items])

    respond_to do |format|
      if @order.save
        session[:cart] = nil
        format.html { redirect_to(@order, :notice => 'Order was successfully created.') }
        format.xml  { render :xml => @order, :status => :created, :location => @order }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /orders/1
  # PUT /orders/1.xml
  def update
    @order = Order.find(params[:id])

    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to(@order, :notice => 'Order was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.xml
  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to(orders_url) }
      format.xml  { head :ok }
    end
  end

  def select_item
    
  end

  def add_to_cart
    cart = session[:cart] || Cart.new
    item = cart.add_item(params[:item_id])
    session[:cart] = cart
    render :text=>'OK',:status => 200
  end

  def remove_from_cart
    cart = session[:cart]
    cart.remove_item(params[:item_id])
    session[:cart] = cart
    render :text=>'OK',:status => 200
  end
end
