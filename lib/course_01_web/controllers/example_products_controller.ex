defmodule Course01Web.ExampleProductsController do
  use Course01Web, :controller

    import Ecto.Query, warn: false
    alias Course01.Product
    alias Course01.Product.Products

    def index(conn, params) do
      products = Product.list_products(params)
      render(conn, "index.html", products: products)
    end

  def show(conn, %{"id" => id}) do
    product = Product.get_product!(id)
    render(conn, "show.html", product: product)
  end

  end
