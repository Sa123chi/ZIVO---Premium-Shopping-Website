import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import { User, Mail, Phone, LogOut, Save } from "lucide-react";
import toast from "react-hot-toast";

import { getProfile, updateProfile } from "../services/authService";
import { useCart } from "../context/CartContext";

function Profile() {
  const navigate = useNavigate();
  const { loadCart } = useCart();

  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);

  const [firstName, setFirstName] = useState("");
  const [lastName, setLastName] = useState("");
  const [phoneNumber, setPhoneNumber] = useState("");

  useEffect(() => {
    const token = localStorage.getItem("token");

    if (!token) {
      navigate("/login");
      return;
    }

    (async () => {
      try {
        const data = await getProfile();
        setUser(data.user);
        setFirstName(data.user.first_name || "");
        setLastName(data.user.last_name || "");
        setPhoneNumber(data.user.phone_number || "");
      } catch (error) {
        toast.error("Could not load your profile.");
      } finally {
        setLoading(false);
      }
    })();
  }, [navigate]);

  const handleSave = async (e) => {
    e.preventDefault();

    try {
      setSaving(true);

      const data = await updateProfile({
        first_name: firstName,
        last_name: lastName,
        phone_number: phoneNumber,
      });

      if (data.success === false) {
        toast.error(data.message || "Could not update profile.");
        return;
      }

      setUser(data.user);

      localStorage.setItem(
        "user",
        JSON.stringify({ ...user, ...data.user })
      );

      toast.success("Profile updated");
    } catch (error) {
      toast.error(
        error.response?.data?.message || "Could not update profile."
      );
    } finally {
      setSaving(false);
    }
  };

  const handleLogout = async () => {
    localStorage.removeItem("token");
    localStorage.removeItem("user");
    await loadCart();
    toast.success("Logged out successfully");
    navigate("/login");
  };

  if (loading) {
    return (
      <section className="max-w-[900px] mx-auto px-6 py-32 text-center">
        <h1 className="text-3xl font-bold text-gray-400">
          Loading your profile...
        </h1>
      </section>
    );
  }

  return (
    <section className="max-w-[900px] mx-auto px-6 py-20">

      <div className="bg-white rounded-[40px] shadow-lg p-12">

        <div className="flex items-center gap-6 mb-12">
          <div className="w-24 h-24 rounded-full bg-[#2E4F46] text-white flex items-center justify-center text-3xl font-bold">
            {firstName?.[0]?.toUpperCase() || <User size={32} />}
          </div>

          <div>
            <h1 className="text-4xl font-bold">
              {firstName} {lastName}
            </h1>
            <p className="text-gray-500 flex items-center gap-2 mt-2">
              <Mail size={16} /> {user?.email}
            </p>
          </div>
        </div>

        <form onSubmit={handleSave} className="space-y-6">

          <div className="grid md:grid-cols-2 gap-6">

            <div>
              <label className="text-sm font-semibold text-gray-500">
                First Name
              </label>
              <input
                value={firstName}
                onChange={(e) => setFirstName(e.target.value)}
                className="w-full border rounded-2xl px-5 py-3 mt-2 outline-none focus:border-[#2E4F46]"
              />
            </div>

            <div>
              <label className="text-sm font-semibold text-gray-500">
                Last Name
              </label>
              <input
                value={lastName}
                onChange={(e) => setLastName(e.target.value)}
                className="w-full border rounded-2xl px-5 py-3 mt-2 outline-none focus:border-[#2E4F46]"
              />
            </div>

          </div>

          <div>
            <label className="text-sm font-semibold text-gray-500 flex items-center gap-2">
              <Phone size={14} /> Phone Number
            </label>
            <input
              value={phoneNumber}
              onChange={(e) => setPhoneNumber(e.target.value)}
              placeholder="10-digit phone number"
              className="w-full border rounded-2xl px-5 py-3 mt-2 outline-none focus:border-[#2E4F46]"
            />
          </div>

          <div>
            <label className="text-sm font-semibold text-gray-500">
              Email (cannot be changed)
            </label>
            <input
              value={user?.email || ""}
              disabled
              className="w-full border rounded-2xl px-5 py-3 mt-2 bg-gray-100 text-gray-500"
            />
          </div>

          <div className="flex gap-4 pt-4">

            <button
              type="submit"
              disabled={saving}
              className="flex-1 bg-[#2E4F46] text-white py-4 rounded-full font-semibold flex items-center justify-center gap-2 hover:bg-[#203c35] duration-300 disabled:opacity-60"
            >
              <Save size={18} />
              {saving ? "Saving..." : "Save Changes"}
            </button>

            <button
              type="button"
              onClick={handleLogout}
              className="px-8 border rounded-full font-semibold flex items-center gap-2 text-red-500 hover:bg-red-50 duration-300"
            >
              <LogOut size={18} />
              Logout
            </button>

          </div>

        </form>

      </div>

    </section>
  );
}

export default Profile;
