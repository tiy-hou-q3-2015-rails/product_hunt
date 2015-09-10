class ProductsController < ApplicationController

  def all_products
    products = []
    toaster = Product.new
    toaster.id = "B35623"
    toaster.name = "Super Awesome Toaster"
    toaster.price = 42.56
    toaster.image = "http://ecx.images-amazon.com/images/I/41sS9DRlHpL.jpg"
    products << toaster

    phone_case = Product.new
    phone_case.id = "B256G3"
    phone_case.name = "ZOMG Product"
    phone_case.price = 24.56
    phone_case.image = "http://www.thinkgeek.com/images/products/other/1960_star_wars_character_case_iphone_5_grid_embed.jpg"\

    products << phone_case

    products

  end

  def list
    @products = all_products

    @message = "This is a very very important message"
  end

  def detail
    @products = all_products


    # get the product from the data

    # /dp/B256G3
    the_id = params[:id]
    #@product = @products[the_id] # used to fetch out of hash
    # we have an array of products
    @product = @products.find {|product| product.id == params[:id]}
  end

end
