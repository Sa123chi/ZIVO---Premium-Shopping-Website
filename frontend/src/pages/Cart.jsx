import {
  Trash2,
  Plus,
  Minus,
  ShoppingBag,
} from "lucide-react";

import {
  useCart,
} from "../context/CartContext";

import {
  Link,
  useNavigate,
} from "react-router-dom";

import { resolveImageUrl } from "../api/client";

function Cart() {
  const {
    cartItems,
    loading,
    removeFromCart,
    increaseQty,
    decreaseQty,
    totalPrice,
  } = useCart();

  const navigate = useNavigate();

  if (loading) {
    return (
      <section className="max-w-[1600px] mx-auto px-6 py-32 text-center">
        <h1 className="text-3xl font-bold text-gray-400">
          Loading your bag...
        </h1>
      </section>
    );
  }

  if (cartItems.length === 0) {
    return (
      <section className="max-w-[1600px] mx-auto px-6 py-32 text-center">

        <ShoppingBag
          size={90}
          className="mx-auto text-gray-300"
        />

        <h1 className="text-5xl font-bold mt-8">
          Your Bag is Empty
        </h1>

        <p className="text-gray-500 mt-5 text-lg">
          Add some amazing products to get started.
        </p>

        <Link
          to="/products"
          className="
          inline-block
          mt-10
          bg-[#2E4F46]
          text-white
          px-10
          py-4
          rounded-full
          font-semibold
          hover:bg-[#203c35]
          duration-300
          "
        >
          Start Shopping
        </Link>

      </section>
    );
  }

  return (
    <section className="max-w-[1600px] mx-auto px-6 py-16">

      <h1 className="text-5xl font-bold mb-14">
        Shopping Bag
      </h1>

      <div className="grid lg:grid-cols-[1fr_400px] gap-12">

        {/* LEFT */}

        <div className="space-y-8">

          {cartItems.map((item) => {
            const image = resolveImageUrl(
              item.image_url,
              "https://via.placeholder.com/300"
            );

            const atMaxStock = item.quantity >= item.stock_quantity;

            return (
              <div
                key={item.cart_item_id}
                className="
                bg-white
                rounded-[35px]
                p-8
                shadow-md
                flex
                gap-8
                items-center
                "
              >
                <img
                  src={image}
                  alt={item.product_name}
                  className="
                  w-40
                  h-40
                  rounded-3xl
                  object-cover
                  "
                />

                <div className="flex-1">

                  <h2 className="text-2xl font-bold">
                    {item.product_name}
                  </h2>

                  <p className="text-[#2E4F46] text-3xl font-bold mt-4">
                    ₹{item.price?.toLocaleString()}
                  </p>

                  <p className="text-gray-400 text-sm mt-2">
                    Subtotal: ₹{item.subtotal?.toLocaleString()}
                  </p>

                  {/* Quantity */}

                  <div className="flex items-center gap-4 mt-6">

                    <button
                      onClick={() => decreaseQty(item.cart_item_id)}
                      className="
                      w-12
                      h-12
                      rounded-full
                      border
                      flex
                      items-center
                      justify-center
                      "
                    >
                      <Minus />
                    </button>

                    <span className="text-xl font-bold">
                      {item.quantity}
                    </span>

                    <button
                      onClick={() => increaseQty(item.cart_item_id)}
                      disabled={atMaxStock}
                      className="
                      w-12
                      h-12
                      rounded-full
                      border
                      flex
                      items-center
                      justify-center
                      disabled:opacity-40
                      "
                    >
                      <Plus />
                    </button>

                    {atMaxStock && (
                      <span className="text-sm text-red-500">
                        Max stock reached
                      </span>
                    )}

                  </div>

                </div>

                <button
                  onClick={() => removeFromCart(item.cart_item_id)}
                  className="
                  text-red-500
                  hover:scale-110
                  duration-300
                  "
                >
                  <Trash2 size={28} />
                </button>

              </div>
            );
          })}
        </div>

        {/* RIGHT */}

        <div
          className="
          bg-white
          rounded-[40px]
          p-10
          shadow-lg
          h-fit
          sticky
          top-28
          "
        >
          <h2 className="text-3xl font-bold mb-10">
            Order Summary
          </h2>

          <div className="space-y-5 text-lg">

            <div className="flex justify-between">
              <span>Items</span>
              <span>{cartItems.length}</span>
            </div>

            <div className="flex justify-between">
              <span>Shipping</span>
              <span>Free</span>
            </div>

            <hr />

            <div className="flex justify-between text-3xl font-bold text-[#2E4F46]">
              <span>Total</span>
              <span>₹{totalPrice.toLocaleString()}</span>
            </div>

          </div>

          <button
            onClick={() => navigate("/checkout")}
            className="
            w-full
            bg-[#2E4F46]
            text-white
            py-5
            rounded-full
            text-xl
            font-semibold
            mt-10
            hover:bg-[#203c35]
            duration-300
            "
          >
            Proceed to Checkout
          </button>

        </div>

      </div>

    </section>
  );
}

export default Cart;
