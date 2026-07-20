import { Routes, Route } from "react-router-dom";
import { Toaster } from "react-hot-toast";

import Navbar from "./components/Navbar";
import Footer from "./components/Footer";

import Home from "./pages/Home";
import ProductDetails from "./pages/ProductDetails";

import Cart from "./pages/Cart";
import Products from "./pages/Products";
import Wishlist from "./pages/Wishlist";

import Checkout from "./pages/Checkout";
import OrderSuccess from "./pages/OrderSuccess";
import Orders from "./pages/Orders";
import Login from "./pages/Login";
import Register from "./pages/Register";
import Profile from "./pages/Profile";

function App() {
  return (
    <div className="bg-[#F8F6F2] min-h-screen flex flex-col">

      <Toaster
        position="top-center"
        toastOptions={{
          duration: 2500,
          style: {
            borderRadius: "999px",
            background: "#2E4F46",
            color: "#fff",
            padding: "14px 22px",
          },
        }}
      />

      <Navbar />

      <div className="flex-1">
        <Routes>

          <Route
            path="/"
            element={<Home />}
          />

          <Route
            path="/product/:id"
            element={<ProductDetails />}
          />

          <Route
            path="/cart"
            element={<Cart />}
          />

          <Route
            path="/products"
            element={<Products />}
          />

          <Route
            path="/wishlist"
            element={<Wishlist />}
          />

          <Route
            path="/checkout"
            element={<Checkout />}
          />

          <Route
            path="/success"
            element={<OrderSuccess />}
          />

          <Route
            path="/orders"
            element={<Orders />}
          />

          <Route
            path="/login"
            element={<Login />}
          />

          <Route
            path="/register"
            element={<Register />}
          />

          <Route
            path="/profile"
            element={<Profile />}
          />

        </Routes>
      </div>

      <Footer />

    </div>
  );
}

export default App;
