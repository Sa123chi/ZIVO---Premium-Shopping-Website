import {
  Search,
  Heart,
  ShoppingBag,
  Package,
  ChevronDown,
  User,
  LogOut,
} from "lucide-react";

import {
  Link,
  useNavigate,
} from "react-router-dom";

import { useState } from "react";

import toast from "react-hot-toast";

import { useCart } from "../context/CartContext";
import { useWishlist } from "../context/WishlistContext";

function Navbar() {
  const navigate = useNavigate();

  const {
    totalItems,
    loadCart,
  } = useCart();

  const {
    wishlistItems,
  } = useWishlist();

  const [search, setSearch] =
    useState("");

  const token =
    localStorage.getItem("token");

  const user =
    JSON.parse(
      localStorage.getItem("user")
    );

  const logout = () => {
    localStorage.removeItem(
      "token"
    );

    localStorage.removeItem(
      "user"
    );

    loadCart();

    toast.success("Logged out successfully");

    navigate("/login");
  };

  const menuItems = {
    Electronics: [
      "Mobiles",
      "Laptops",
      "Smart Watches",
      "Headphones",
      "Gaming",
    ],

    Fashion: [
      "Men Clothing",
      "Women Clothing",
      "Shoes",
      "Bags",
      "Jewellery",
    ],

    "Home & Kitchen": [
      "Furniture",
      "Decor",
      "Cookware",
      "Lighting",
    ],

    Books: [
      "Education",
      "Fiction",
      "Programming",
      "Business",
    ],

    "Sports & Fitness": [
      "Cricket",
      "Football",
      "Gym",
      "Cycling",
    ],

    "Beauty & Personal Care": [
      "Makeup",
      "Skincare",
      "Perfumes",
    ],

    "Toys & Games": [
      "Educational Toys",
      "Action Figures",
      "Board Games",
      "Dolls",
    ],

    Groceries: [
      "Snacks",
      "Beverages",
      "Rice",
      "Tea & Coffee",
    ],
  };

  return (
    <>
      <div className="bg-[#2E4F46] text-white text-center py-2 text-sm">
        FREE SHIPPING ON ORDERS ABOVE ₹999 ✨
      </div>

      <nav className="bg-white shadow-sm sticky top-0 z-50">

        <div className="max-w-[1650px] mx-auto px-8">

          <div className="h-28 flex items-center justify-between">

            {/* LOGO */}

            <Link to="/">
              <h1 className="text-5xl font-black text-[#2E4F46]">
                ZIVO
              </h1>
            </Link>

            {/* SEARCH */}

            <div className="hidden lg:flex items-center bg-[#F7F5F2] rounded-full px-8 py-5 w-[700px]">

              <Search
                size={20}
                className="text-gray-500"
              />

              <input
                placeholder="Search products..."
                value={search}
                onChange={(e) =>
                  setSearch(
                    e.target.value
                  )
                }
                onKeyDown={(e) => {
                  if (
                    e.key ===
                    "Enter" &&
                    search.trim()
                  ) {
                    navigate(
                      `/products?search=${encodeURIComponent(search.trim())}`
                    );
                  }
                }}
                className="ml-4 bg-transparent outline-none w-full"
              />

            </div>

            {/* RIGHT ICONS */}

            <div className="flex items-center gap-10">

              <Link to="/orders"
                className="flex flex-col items-center hover:text-[#2E4F46]"
              >
                <Package size={26} />
                <span className="text-sm mt-1">
                  Orders
                </span>
              </Link>

              {/* Wishlist */}

              <Link
                to="/wishlist"
                className="relative flex flex-col items-center hover:text-[#D6B37A]"
              >
                <Heart size={26} />

                {wishlistItems.length >
                  0 && (
                    <span
                      className="
                    absolute
                    -top-2
                    -right-2
                    bg-[#D6B37A]
                    text-white
                    w-5
                    h-5
                    rounded-full
                    text-[10px]
                    flex
                    justify-center
                    items-center
                  "
                    >
                      {
                        wishlistItems.length
                      }
                    </span>
                  )}

                <span className="text-sm mt-1">
                  Wishlist
                </span>
              </Link>

              {/* CART */}

              <Link
                to="/cart"
                className="relative flex flex-col items-center hover:text-[#2E4F46]"
              >
                <ShoppingBag size={26} />

                {totalItems > 0 && (
                  <span
                    className="
                    absolute
                    -top-2
                    -right-2
                    bg-[#2E4F46]
                    text-white
                    w-5
                    h-5
                    rounded-full
                    text-[10px]
                    flex
                    justify-center
                    items-center
                  "
                  >
                    {totalItems}
                  </span>
                )}

                <span className="text-sm mt-1">
                  Bag
                </span>
              </Link>

              {/* LOGIN / PROFILE */}

              {!token ? (
                <>
                  <Link
                    to="/login"
                    className="
                    border
                    border-[#2E4F46]
                    px-8
                    py-3
                    rounded-full
                    font-semibold
                    hover:bg-[#2E4F46]
                    hover:text-white
                    duration-300
                  "
                  >
                    Login
                  </Link>

                  <Link
                    to="/register"
                    className="
                    bg-[#2E4F46]
                    text-white
                    px-8
                    py-3
                    rounded-full
                    font-semibold
                  "
                  >
                    Register
                  </Link>
                </>
              ) : (
                <div className="flex items-center gap-5">

                  <Link
                    to="/profile"
                    className="flex items-center gap-2"
                  >
                    <User size={22} />

                    {user?.first_name}
                  </Link>

                  <button
                    onClick={
                      logout
                    }
                    className="
                    flex
                    items-center
                    gap-2
                    text-red-500
                  "
                  >
                    <LogOut size={20} />
                  </button>

                </div>
              )}

            </div>

          </div>

        </div>

        {/* CATEGORY BAR */}

        <div className="border-t">

          <div className="max-w-[1650px] mx-auto px-8">

            <div className="flex gap-16 py-5">

              {Object.entries(
                menuItems
              ).map(
                ([
                  title,
                  items,
                ]) => (

                  <div
                    key={title}
                    className="relative group"
                  >

                    {/* Main Category */}

                    <Link
                      to={`/products?category=${title}`}
                      className="
                      flex
                      items-center
                      gap-2
                      font-semibold
                      hover:text-[#2E4F46]
                    "
                    >
                      {title}

                      <ChevronDown
                        size={18}
                      />
                    </Link>

                    {/* Dropdown */}

                    <div
                      className="
                      absolute
                      top-full
                      left-0
                      bg-white
                      rounded-3xl
                      shadow-2xl
                      p-7
                      min-w-[260px]
                      opacity-0
                      invisible
                      group-hover:opacity-100
                      group-hover:visible
                      duration-300
                      z-50
                    "
                    >

                      <div className="space-y-4">

                        {items.map(
                          (
                            item
                          ) => (
                            <Link
                              key={
                                item
                              }
                              to={`/products?search=${item}`}
                              className="
                              block
                              text-gray-600
                              hover:text-[#2E4F46]
                            "
                            >
                              {
                                item
                              }
                            </Link>
                          )
                        )}

                      </div>

                    </div>

                  </div>
                )
              )}

            </div>

          </div>

        </div>

      </nav>
    </>
  );
}

export default Navbar;