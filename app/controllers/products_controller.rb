class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
      @product = Product.new
  end

  def create
    @product = Product.new(product_params)
      if @product.save
      flash[:success] = "記事が作成できました。"
      redirect_to root_path
    else
      flash.now[:alert] = "投稿の作成に失敗しました"
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
       redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
      @product.destroy!
    redirect_to root_path
  end

  private
    def product_params
      params.require(:product)
      .permit(:image, :cpu, :graphic, :storage, :memory, :os, :price, :product_name, :accessory, :notice, :application_form)
    end
  end
