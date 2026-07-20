import api from "../api/client";

// Place an order from the current (backend) cart
export const placeOrder = async (paymentMethod = "Cash on Delivery") => {
    const response = await api.post("/orders/place", {
        payment_method: paymentMethod,
    });
    return response.data;
};

// Get all orders for the logged-in user
export const getOrders = async () => {
    const response = await api.get("/orders");
    return response.data.orders;
};

// Get a single order's details
export const getOrderById = async (orderId) => {
    const response = await api.get(`/orders/${orderId}`);
    return response.data;
};

// Cancel a pending order
export const cancelOrder = async (orderId) => {
    const response = await api.post(`/orders/${orderId}/cancel`);
    return response.data;
};
