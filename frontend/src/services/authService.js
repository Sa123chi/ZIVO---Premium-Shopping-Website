import api from "../api/client";

// Login
export const loginUser = async (email, password) => {
    const response = await api.post("/login", { email, password });
    return response.data;
};

// Register
export const registerUser = async (userData) => {
    const response = await api.post("/register", userData);
    return response.data;
};

// Get Logged In User
export const getProfile = async () => {
    const response = await api.get("/profile");
    return response.data;
};

// Update Logged In User
export const updateProfile = async (userData) => {
    const response = await api.put("/profile", userData);
    return response.data;
};
