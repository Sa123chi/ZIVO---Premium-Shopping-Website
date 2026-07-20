import {
    Heart,
    Star,
    ShoppingBag,
    Check,
} from "lucide-react";

import { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import toast from "react-hot-toast";

import { resolveImageUrl } from "../api/client";
import { useCart } from "../context/CartContext";
import { useWishlist } from "../context/WishlistContext";

function ProductCard({ product }) {
    const navigate = useNavigate();
    const { addToCart } = useCart();
    const { isInWishlist, toggleWishlist } = useWishlist();
    const [adding, setAdding] = useState(false);

    const liked = isInWishlist(product.product_id);

    const imageUrl = resolveImageUrl(
        product.image_url,
        "https://via.placeholder.com/400x400?text=Zivo"
    );

    const discountPercent =
        product.discount_price && product.price
            ? Math.round(
                  ((product.price - product.discount_price) / product.price) * 100
              )
            : null;

    const outOfStock = product.stock_quantity !== undefined && product.stock_quantity <= 0;

    const handleWishlist = (e) => {
        e.preventDefault();
        toggleWishlist(product);
        toast.success(
            liked ? "Removed from wishlist" : "Added to wishlist",
            { icon: liked ? "💔" : "❤️" }
        );
    };

    const handleAddToCart = async (e) => {
        e.preventDefault();

        if (outOfStock) return;

        setAdding(true);
        const result = await addToCart(product, 1);
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

    return (
        <Link to={`/product/${product.product_id}`}>
            <div
                className="
        bg-white
        rounded-[30px]
        overflow-hidden
        shadow-md
        hover:shadow-2xl
        hover:-translate-y-2
        duration-500
        group
        relative
        "
            >
                {/* SALE */}

                {discountPercent && (
                    <div
                        className="
            absolute
            top-4
            left-4
            bg-[#2E4F46]
            text-white
            px-4
            py-2
            rounded-full
            text-xs
            font-bold
            z-20
            "
                    >
                        {discountPercent}% OFF
                    </div>
                )}

                {outOfStock && (
                    <div
                        className="
            absolute
            top-4
            left-1/2
            -translate-x-1/2
            bg-black/80
            text-white
            px-5
            py-1.5
            rounded-full
            text-xs
            font-bold
            z-20
            tracking-wide
            "
                    >
                        OUT OF STOCK
                    </div>
                )}

                {/* WISHLIST */}

                <button
                    onClick={handleWishlist}
                    className="
          absolute
          top-4
          right-4
          z-20
          bg-white
          w-11
          h-11
          rounded-full
          shadow-lg
          flex
          justify-center
          items-center
          transition
          hover:scale-110
          "
                >
                    <Heart
                        size={20}
                        fill={liked ? "#D6B37A" : "transparent"}
                        color={liked ? "#D6B37A" : "#444"}
                    />
                </button>

                {/* IMAGE */}

                <div className="overflow-hidden bg-gray-50">
                    <img
                        src={imageUrl}
                        alt={product.product_name}
                        loading="lazy"
                        className="
            h-[270px]
            w-full
            object-cover
            group-hover:scale-110
            duration-700
            "
                    />
                </div>

                {/* INFO */}

                <div className="p-5">
                    <div className="flex items-center justify-between">
                        <p className="text-[#2E4F46] text-sm font-medium">
                            {product.brand_name || product.category_name}
                        </p>

                        <div className="flex items-center gap-1">
                            <Star size={14} fill="#FFD700" color="#FFD700" />
                            <span className="text-xs text-gray-600">4.5</span>
                        </div>
                    </div>

                    <h3
                        className="
            font-bold
            text-lg
            mt-2
            line-clamp-2
            min-h-[55px]
            "
                    >
                        {product.product_name}
                    </h3>

                    {/* PRICE */}

                    <div className="flex items-center gap-3 mt-4">
                        <p className="text-[#2E4F46] text-xl font-bold">
                            ₹
                            {(
                                product.discount_price || product.price
                            )?.toLocaleString()}
                        </p>

                        {discountPercent && (
                            <p className="line-through text-gray-400 text-sm">
                                ₹{product.price?.toLocaleString()}
                            </p>
                        )}
                    </div>

                    {/* BUTTON */}

                    <button
                        onClick={handleAddToCart}
                        disabled={adding || outOfStock}
                        className="
            mt-5
            w-full
            bg-[#2E4F46]
            text-white
            py-3
            rounded-full
            font-semibold
            flex
            justify-center
            items-center
            gap-2
            hover:bg-[#203c35]
            duration-300
            disabled:opacity-50
            disabled:cursor-not-allowed
            "
                    >
                        {adding ? (
                            <Check size={18} />
                        ) : (
                            <ShoppingBag size={18} />
                        )}

                        {outOfStock
                            ? "Out of Stock"
                            : adding
                            ? "Added"
                            : "Add to Bag"}
                    </button>
                </div>
            </div>
        </Link>
    );
}

export default ProductCard;
