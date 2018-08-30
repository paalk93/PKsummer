defmodule Course01Web.SimpleDataExampleController do
  use Course01Web, :controller

    import Ecto.Query, warn: false
    alias Course01.Repo
    alias Course01.Product
    alias Course01.Product.Products
    alias Course01.Product.Supplier

    def index(conn, params) do
      products = Product.list_products(params)
      render(conn, "index.html", products: products)
    end

    def create(conn, %{"products" => products_params}) do
      changeset = Products.changeset(%Products{}, products_params)
    case Repo.insert(changeset) do
      {:ok, products} ->
        conn
        |> redirect(to: simple_data_example_path(conn, :index, products: products))
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def new(conn, _params) do
    changeset = Product.change_product(%Products{supplier: %Supplier{}})
    render(conn, "new.html", changeset: changeset)
  end

  def delete(conn, %{"id" => id}) do
    product = Product.get_product!(id)
    {:ok, _product} = Product.delete_product(product)
    conn
    |> put_flash(:info, "Product deleted successfully.")
    |> redirect(to: simple_data_example_path(conn, :index))
  end

  def edit(conn, %{"id" => id}) do
    product = Product.get_product!(id)
    changeset = Product.change_product(product)
    render(conn, "edit.html", products: product, changeset: changeset)
  end

  def update(conn, %{"id" => id, "products" => products_params}) do
    product = Product.get_product!(id)
    case Product.update_product(product, products_params) do
      {:ok, product} ->
        conn
        |> put_flash(:info, "Product updated successfully.")
        |> redirect(to: simple_data_example_path(conn, :index, products: product))
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", products: product, changeset: changeset)
    end
  end

  end
