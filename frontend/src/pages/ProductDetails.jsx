import {
  Heart,
  ShoppingBag,
  Star,
} from "lucide-react";

import {
  useParams,
  useNavigate,
  Link,
} from "react-router-dom";

import {
  useEffect,
  useState,
} from "react";

import toast from "react-hot-toast";

import {
  getProductById,
  getProducts,
} from "../services/productService";

import {
  useCart,
} from "../context/CartContext";

import {
  useWishlist,
} from "../context/WishlistContext";

import { resolveImageUrl } from "../api/client";

import ProductCard
  from "../components/ProductCard";

function ProductDetails() {
  const { id } =
    useParams();

  const navigate = useNavigate();

  const {
    addToCart,
  } = useCart();

  const {
    isInWishlist,
    toggleWishlist,
  } = useWishlist();

  const [product,
    setProduct] =
    useState(null);

  const [relatedProducts,
    setRelatedProducts] =
    useState([]);

  const [loading,
    setLoading] =
    useState(true);

  const [quantity,
    setQuantity] =
    useState(1);

  const [adding,
    setAdding] =
    useState(false);

  useEffect(() => {
    loadProduct();
  }, [id]);

  const loadProduct =
    async () => {
      try {
        setLoading(true);

        const data =
          await getProductById(id);

        setProduct(data);

        const allProducts =
          await getProducts();

        const related =
          allProducts
            .filter(
              (item) =>
                item.category_name ===
                data.category_name &&
                item.product_id !==
                data.product_id
            )
            .slice(0, 4);

        setRelatedProducts(
          related
        );
      }

      catch (error) {
        console.log(error);
      }

      setLoading(false);
    };

  if (loading) {
    return (
      <div className="py-40 text-center">

        <h1 className="text-4xl font-bold">
          Loading Product...
        </h1>

      </div>
    );
  }

  if (!product) {
    return (
      <div className="py-40 text-center">

        <h1 className="text-4xl font-bold">
          Product Not Found
        </h1>

        <Link
          to="/products"
          className="inline-block mt-8 text-[#2E4F46] font-semibold underline"
        >
          Back to Shopping
        </Link>

      </div>
    );
  }

  const imageUrl = resolveImageUrl(
    product.image_url,
    "https://via.placeholder.com/600"
  );

  const liked = isInWishlist(product.product_id);

  const outOfStock = product.stock_quantity <= 0;

  const handleAddToCart = async () => {
    setAdding(true);

    const result = await addToCart(product, quantity);

    setAdding(false);

    if (result.requiresLogin) {
      toast.error("Please login to add items to your bag");
      navigate("/login");
      return;
    }

    if (result.success) {
      toast.success("Added to bag");
    } else {
      toast.error(result.message || "Could not add to bag");
    }
  };

  const handleWishlist = () => {
    toggleWishlist(product);
    toast.success(
      liked ? "Removed from wishlist" : "Added to wishlist",
      { icon: liked ? "💔" : "❤️" }
    );
  };

  return (
    <>

      {/* PRODUCT DETAILS */}

      <section className="max-w-[1600px] mx-auto px-6 py-20">

        <div className="grid lg:grid-cols-2 gap-20">

          {/* IMAGE */}

          <div>

            <div
              className="
              bg-white
              rounded-[45px]
              overflow-hidden
              shadow-xl
              "
            >
              <img
                src={imageUrl}
                alt={
                  product.product_name
                }
                className="
                w-full
                h-[700px]
                object-cover
                "
              />
            </div>

          </div>

          {/* DETAILS */}

          <div className="flex flex-col justify-center">

            <p
              className="
              uppercase
              tracking-[6px]
              text-[#D6B37A]
              "
            >
              {product.category_name}
            </p>

            <h1 className="text-6xl font-bold mt-5">

              {product.product_name}

            </h1>

            <p className="text-gray-500 text-xl mt-4">

              SKU :
              {" "}
              {product.sku}

            </p>

            {/* RATING */}

            <div className="flex items-center gap-3 mt-6">

              <Star
                fill="#FFD700"
                color="#FFD700"
              />

              <span>
                4.5 Rating
              </span>

            </div>

            {/* PRICE */}

            <div className="flex gap-5 items-center mt-10">

              <h2
                className="
                text-5xl
                font-bold
                text-[#2E4F46]
                "
              >
                ₹
                {(
                  product.discount_price ||
                  product.price
                )?.toLocaleString()}
              </h2>

              {product.discount_price && (
                <p
                  className="
                  line-through
                  text-2xl
                  text-gray-400
                  "
                >
                  ₹
                  {product.price?.toLocaleString()}
                </p>
              )}

            </div>

            {/* DESCRIPTION */}

            <p
              className="
              mt-10
              text-gray-600
              text-lg
              leading-8
              "
            >
              {product.description}
            </p>

            {/* EXTRA DETAILS */}

            <div className="mt-10 space-y-4 text-lg">

              <p>

                <span className="font-bold">
                  Brand :
                </span>

                {" "}
                {product.brand_name}

              </p>

              <p>

                <span className="font-bold">
                  Color :
                </span>

                {" "}
                {product.color}

              </p>

              <p>

                <span className="font-bold">
                  Warranty :
                </span>

                {" "}
                {product.warranty}

              </p>

              <p>

                <span className="font-bold">
                  Stock :
                </span>

                {" "}
                {product.stock_quantity}

              </p>

            </div>

            {/* QUANTITY */}

            <div className="mt-12">

              <h3
                className="
                font-semibold
                text-xl
                mb-5
                "
              >
                Quantity
              </h3>

              <div className="flex items-center gap-5">

                <button
                  onClick={() =>
                    quantity > 1 &&
                    setQuantity(
                      quantity - 1
                    )
                  }
                  className="
                  w-14
                  h-14
                  rounded-full
                  border
                  text-2xl
                  "
                >
                  -
                </button>

                <span
                  className="
                  text-2xl
                  font-bold
                  "
                >
                  {quantity}
                </span>

                <button
                  onClick={() =>
                    quantity < product.stock_quantity &&
                    setQuantity(
                      quantity + 1
                    )
                  }
                  className="
                  w-14
                  h-14
                  rounded-full
                  border
                  text-2xl
                  disabled:opacity-40
                  "
                  disabled={quantity >= product.stock_quantity}
                >
                  +
                </button>

              </div>

              {product.stock_quantity > 0 && product.stock_quantity <= 5 && (
                <p className="text-red-500 font-medium mt-3">
                  Only {product.stock_quantity} left in stock — order soon!
                </p>
              )}

            </div>

            {/* BUTTONS */}

            <div className="flex gap-5 mt-14">

              <button
                onClick={handleAddToCart}
                disabled={adding || outOfStock}
                className="
                flex-1
                bg-[#2E4F46]
                text-white
                py-5
                rounded-full
                text-lg
                font-semibold
                flex
                justify-center
                items-center
                gap-3
                hover:bg-[#203c35]
                duration-300
                disabled:opacity-50
                disabled:cursor-not-allowed
                "
              >

                <ShoppingBag />

                {outOfStock
                  ? "Out of Stock"
                  : adding
                  ? "Adding..."
                  : "Add To Cart"}

              </button>

              <button
                onClick={handleWishlist}
                className="
                w-20
                rounded-full
                border
                flex
                justify-center
                items-center
                hover:bg-gray-100
                "
              >
                <Heart
                  fill={liked ? "#D6B37A" : "transparent"}
                  color={liked ? "#D6B37A" : "#1a1a1a"}
                />
              </button>

            </div>

          </div>

        </div>

      </section>

      {/* RELATED PRODUCTS */}

      {relatedProducts.length > 0 && (

        <section className="max-w-[1650px] mx-auto px-6 pb-28">

          <h2 className="text-5xl font-bold mb-14">

            You May Also Like

          </h2>

          <div
            className="
            grid
            lg:grid-cols-4
            md:grid-cols-2
            gap-8
            "
          >

            {relatedProducts.map(
              (item) => (
                <ProductCard
                  key={
                    item.product_id
                  }
                  product={item}
                />
              )
            )}

          </div>

        </section>

      )}

    </>
  );
}

export default ProductDetails;