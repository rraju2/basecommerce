class Admin::ProductsController < ApplicationController
  set_tab :products
  layout "admin"
  def index
    @products = Product.page(params[:page]).per(2)
  end

  def new
    @product = Product.new
	@product_variant = @product.product_variants.build
  end

  def create
    @product = Product.new(params[:product])
    @product.product_variants.first.master = 'true'
	if @product.save
      redirect_to admin_products_path, :notice => "Successfully created product."
    else
      render :action => 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to admin_products_path, :notice  => "Successfully updated product."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_products_path, :notice => "Successfully destroyed product."
  end
end
