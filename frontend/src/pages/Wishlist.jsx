import { Heart, ShoppingBag, Trash2 } from "lucide-react";
import { Link, useNavigate } from "react-router-dom";
import toast from "react-hot-toast";

import { useWishlist } from "../context/WishlistContext";
import { useCart } from "../context/CartContext";
import { resolveImageUrl } from "../api/client";

function Wishlist() {
    const {
        wishlistItems,
        removeWishlist,
    } = useWishlist();

    const { addToCart } = useCart();
    const navigate = useNavigate();

    const handleMoveToCart = async (item) => {
        const result = await addToCart(item, 1);

        if (result.requiresLogin) {
            toast.error("Please login to add items to your bag");
            navigate("/login");
            return;
        }

        if (result.success) {
            toast.success("Moved to bag");
            removeWishlist(item.product_id);
        } else {
            toast.error(result.message || "Could not add to bag");
        }
    };

    return (
        <section className="max-w-[1500px] mx-auto px-6 py-20">

            <h1 className="text-5xl font-bold mb-14">
                My Wishlist
            </h1>

            {wishlistItems.length === 0 ? (
                <div className="text-center py-32">

                    <Heart
                        size={80}
                        className="mx-auto text-gray-300"
                    />

                    <h2 className="text-3xl font-bold mt-8">
                        Wishlist Empty
                    </h2>

                    <p className="text-gray-500 mt-4">
                        Save products you love here.
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
                        Discover Products
                    </Link>

                </div>
            ) : (
                <div className="grid lg:grid-cols-4 md:grid-cols-2 gap-8">

                    {wishlistItems.map((item) => {
                        const outOfStock =
                            item.stock_quantity !== undefined &&
                            item.stock_quantity <= 0;

                        return (
                            <div
                                key={item.product_id}
                                className="
                bg-white
                rounded-[35px]
                overflow-hidden
                shadow-lg
                "
                            >
                                <Link to={`/product/${item.product_id}`}>
                                    <img
                                        src={resolveImageUrl(item.image_url)}
                                        alt={item.product_name}
                                        className="
                      h-[380px]
                      w-full
                      object-cover
                      "
                                    />
                                </Link>

                                <div className="p-6">

                                    <h2 className="font-bold text-2xl line-clamp-2 min-h-[64px]">
                                        {item.product_name}
                                    </h2>

                                    <p className="text-gray-500 mt-2">
                                        {item.brand_name || item.category_name}
                                    </p>

                                    <div className="flex items-center gap-3 mt-5">
                                        <p className="text-[#2E4F46] text-3xl font-bold">
                                            ₹{(item.discount_price || item.price)?.toLocaleString()}
                                        </p>

                                        {item.discount_price && (
                                            <p className="line-through text-gray-400">
                                                ₹{item.price?.toLocaleString()}
                                            </p>
                                        )}
                                    </div>

                                    <button
                                        onClick={() => handleMoveToCart(item)}
                                        disabled={outOfStock}
                                        className="
                    mt-6
                    w-full
                    bg-[#2E4F46]
                    text-white
                    py-4
                    rounded-full
                    flex
                    justify-center
                    items-center
                    gap-3
                    disabled:opacity-50
                    disabled:cursor-not-allowed
                    "
                                    >
                                        <ShoppingBag size={20} />
                                        {outOfStock ? "Out of Stock" : "Move To Bag"}
                                    </button>

                                    <button
                                        onClick={() => {
                                            removeWishlist(item.product_id);
                                            toast.success("Removed from wishlist");
                                        }}
                                        className="
                    mt-4
                    w-full
                    border
                    py-4
                    rounded-full
                    flex
                    justify-center
                    items-center
                    gap-2
                    hover:bg-gray-50
                    "
                                    >
                                        <Trash2 size={18} />
                                        Remove
                                    </button>

                                </div>

                            </div>
                        );
                    })}

                </div>
            )}

        </section>
    );
}

export default Wishlist;
