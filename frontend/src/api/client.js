import axios from "axios";

// Base URL of the Flask backend. Configure via frontend/.env -> VITE_API_URL
export const API_BASE_URL =
  import.meta.env.VITE_API_URL || "http://127.0.0.1:5000";

function attachInterceptors(instance) {
  instance.interceptors.request.use((config) => {
    const token = localStorage.getItem("token");

    if (token) {
      config.headers.Authorization = `Bearer ${token}`;
    }

    return config;
  });

  instance.interceptors.response.use(
    (response) => response,
    (error) => {
      if (error?.response?.status === 401) {
        // Token missing/expired/invalid - clear stale session
        localStorage.removeItem("token");
        localStorage.removeItem("user");
      }

      return Promise.reject(error);
    }
  );

  return instance;
}

// Main API client - matches routes registered without a prefix
// (/login, /register, /products, /cart, /orders, /profile, ...)
export const api = attachInterceptors(
  axios.create({ baseURL: API_BASE_URL })
);

// Admin / seller API client - matches routes registered under /api
// (/api/admin/*, /api/seller/*)
export const adminApi = attachInterceptors(
  axios.create({ baseURL: `${API_BASE_URL}/api` })
);

// Builds a full, browser-usable URL for an image path returned by the backend
export function resolveImageUrl(path, fallback = "/placeholder.png") {
  if (!path) return fallback;
  if (/^https?:\/\//i.test(path)) return path;
  return `${API_BASE_URL}/${path.replace(/^\/+/, "")}`;
}

export default api;
