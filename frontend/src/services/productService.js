import api from "../api/client";

// Get all active products, optionally filtered/sorted via query params
// e.g. getProducts({ search: "shoes", sort: "price_asc" })
export const getProducts = async (params = {}) => {
    try {
        const response = await api.get("/products", { params });
        return response.data;
    } catch (error) {
        console.error(error);
        return [];
    }
};

export const getProductById = async (id) => {
    try {
        const response = await api.get(`/products/${id}`);
        return response.data;
    } catch (error) {
        console.error(error);
        return null;
    }
};
