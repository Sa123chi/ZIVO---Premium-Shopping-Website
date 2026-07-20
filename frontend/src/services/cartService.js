import api from "../api/client";

// Get the logged-in user's cart
export const getCart = async () => {
    const response = await api.get("/cart");
    return response.data;
};

// Add a product to the cart
export const addToCartAPI = async (product_id, quantity = 1) => {
    const response = await api.post("/cart/add", { product_id, quantity });
    return response.data;
};

// Update quantity of a cart item
export const updateCartAPI = async (cart_item_id, quantity) => {
    const response = await api.put("/cart/update", { cart_item_id, quantity });
    return response.data;
};

// Remove a single cart item
export const removeCartAPI = async (cart_item_id) => {
    const response = await api.delete(`/cart/remove/${cart_item_id}`);
    return response.data;
};

// Clear the entire cart
export const clearCartAPI = async () => {
    const response = await api.delete("/cart/clear");
    return response.data;
};
