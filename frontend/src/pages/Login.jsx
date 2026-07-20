import { Link, useNavigate } from "react-router-dom";
import { useState } from "react";
import toast from "react-hot-toast";

import { loginUser } from "../services/authService";
import { useCart } from "../context/CartContext";

function Login() {
  const navigate = useNavigate();
  const { loadCart } = useCart();

  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [loading, setLoading] = useState(false);

  const handleLogin = async (e) => {
    e.preventDefault();

    if (!email || !password) {
      toast.error("Please fill all fields.");
      return;
    }

    try {
      setLoading(true);

      const data = await loginUser(email, password);

      const token = data.access_token;
      const user = data.user;

      if (!token) {
        toast.error(data.message || "Login failed.");
        return;
      }

      localStorage.setItem("token", token);
      localStorage.setItem("user", JSON.stringify(user));

      toast.success(`Welcome back, ${user?.first_name || "there"}!`);

      await loadCart();

      navigate("/");

    } catch (error) {
      toast.error(
        error.response?.data?.message || "Invalid Email or Password"
      );
    } finally {
      setLoading(false);
    }
  };

  return (
    <section className="min-h-[80vh] flex items-center justify-center bg-[#F8F6F2] py-20">

      <form
        onSubmit={handleLogin}
        className="bg-white w-[500px] p-12 rounded-[40px] shadow-xl"
      >

        <h1 className="text-5xl font-bold text-center mb-4">
          Welcome Back
        </h1>

        <p className="text-center text-gray-500 mb-10">
          Login to continue shopping
        </p>

        <div className="space-y-6">

          <input
            type="email"
            placeholder="Email Address"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            className="
            w-full
            border
            rounded-full
            px-6
            py-4
            outline-none
            focus:border-[#2E4F46]
            "
          />

          <input
            type="password"
            placeholder="Password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            className="
            w-full
            border
            rounded-full
            px-6
            py-4
            outline-none
            focus:border-[#2E4F46]
            "
          />

          <button
            type="submit"
            disabled={loading}
            className="
            w-full
            bg-[#2E4F46]
            text-white
            py-4
            rounded-full
            font-semibold
            hover:bg-[#203c35]
            duration-300
            disabled:opacity-50
            "
          >
            {loading ? "Logging In..." : "Login"}
          </button>

        </div>

        <p className="text-center mt-8">

          Don't have an account?

          <Link
            to="/register"
            className="
            text-[#2E4F46]
            font-bold
            ml-2
            "
          >
            Register
          </Link>

        </p>

      </form>

    </section>
  );
}

export default Login;
