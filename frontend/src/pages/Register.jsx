import { Link, useNavigate } from "react-router-dom";
import { useState } from "react";
import toast from "react-hot-toast";

import { registerUser } from "../services/authService";

function Register() {
  const navigate = useNavigate();

  const [firstName, setFirstName] = useState("");
  const [lastName, setLastName] = useState("");
  const [email, setEmail] = useState("");
  const [phoneNumber, setPhoneNumber] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [loading, setLoading] = useState(false);

  const handleRegister = async (e) => {
    e.preventDefault();

    if (!firstName || !lastName || !email || !password) {
      toast.error("Please fill all required fields.");
      return;
    }

    if (password !== confirmPassword) {
      toast.error("Passwords do not match.");
      return;
    }

    try {
      setLoading(true);

      const data = await registerUser({
        first_name: firstName,
        last_name: lastName,
        email,
        phone_number: phoneNumber,
        password,
      });

      if (data.success === false) {
        toast.error(data.message || "Registration failed.");
        return;
      }

      toast.success("Account created! Please log in.");

      navigate("/login");
    } catch (error) {
      toast.error(
        error.response?.data?.message || "Registration failed."
      );
    } finally {
      setLoading(false);
    }
  };

  return (
    <section className="min-h-[80vh] flex items-center justify-center bg-[#F8F6F2] py-20">

      <form
        onSubmit={handleRegister}
        className="bg-white w-[550px] p-12 rounded-[40px] shadow-xl"
      >

        <h1 className="text-5xl font-bold text-center mb-4">
          Create Account
        </h1>

        <p className="text-center text-gray-500 mb-10">
          Join ZIVO today
        </p>

        <div className="space-y-6">

          <div className="flex gap-4">
            <input
              type="text"
              placeholder="First Name"
              value={firstName}
              onChange={(e) => setFirstName(e.target.value)}
              className="
              w-1/2
              border
              rounded-full
              px-6
              py-4
              outline-none
              focus:border-[#2E4F46]
              "
            />

            <input
              type="text"
              placeholder="Last Name"
              value={lastName}
              onChange={(e) => setLastName(e.target.value)}
              className="
              w-1/2
              border
              rounded-full
              px-6
              py-4
              outline-none
              focus:border-[#2E4F46]
              "
            />
          </div>

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
            type="tel"
            placeholder="Phone Number (optional)"
            value={phoneNumber}
            onChange={(e) => setPhoneNumber(e.target.value)}
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

          <p className="text-xs text-gray-400 px-2 -mt-3">
            Must be 8+ characters with upper, lower, number & special character.
          </p>

          <input
            type="password"
            placeholder="Confirm Password"
            value={confirmPassword}
            onChange={(e) => setConfirmPassword(e.target.value)}
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
            disabled:opacity-60
            "
          >
            {loading ? "Creating Account..." : "Register"}
          </button>

        </div>

        <p className="text-center mt-8">

          Already have an account?

          <Link
            to="/login"
            className="
            text-[#2E4F46]
            font-bold
            ml-2
            "
          >
            Login
          </Link>

        </p>

      </form>

    </section>
  );
}

export default Register;
