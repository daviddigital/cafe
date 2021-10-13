class MenuController < ApplicationController
  @@menu = { 'Latte' => 4.00, 'Scone' => 5.00, 'Tea' => 3.00 }

  def index
    @menu = @@menu
    # p @menu // puts it on server log
    # render html: "<h2> Menu: #{@menu} </h2>".html_safe 
    # render json: @menu
    # render plain: "Hello"
  end

  def create
    # render json: params
    # render plain: params["name"]
    # render plain: params[:name]
    @@menu[params[:name]] = params[:price]
    redirect_to '/menu'
  end

  def show
    @item = @@menu.find { |k, v| k == params[:item] }
    if @item.nil? 
      render html: "<h5> Item not found!</h5>".html_safe, status: 404
    end
    # render json: @item
  end
end
