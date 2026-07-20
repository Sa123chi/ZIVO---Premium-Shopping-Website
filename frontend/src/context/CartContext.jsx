import {
    createContext,
    useContext,
    useEffect,
    useState,
    useCallback,
} from "react";

import {
    getCart,
    addToCartAPI,
    updateCartAPI,
    removeCartAPI,
    clearCartAPI,
} from "../services/cartService";

const CartContext = createContext();

export function CartProvider({ children }) {
    const [cartItems, setCartItems] = useState([]);
    const [loading, setLoading] = useState(false);

    const isLoggedIn = () => Boolean(localStorage.getItem("token"));

    // ==========================
    // LOAD CART FROM BACKEND
    // ==========================
    const loadCart = useCallback(async () => {
        if (!isLoggedIn()) {
            setCartItems([]);
            return;
        }

        try {
            setLoading(true);
            const data = await getCart();
            setCartItems(data.items || []);
        } catch (error) {
            console.error("Failed to load cart:", error);
        } finally {
            setLoading(false);
        }
    }, []);

    useEffect(() => {
        loadCart();

        // Keep cart in sync across tabs / after login-logout
        const handleStorage = (e) => {
            if (e.key === "token") loadCart();
        };

        window.addEventListener("storage", handleStorage);
        return () => window.removeEventListener("storage", handleStorage);
    }, [loadCart]);

    // ==========================
    // ADD TO CART
    // ==========================
    const addToCart = async (product, quantity = 1) => {
        if (!isLoggedIn()) {
            return { success: false, requiresLogin: true };
        }

        try {
            await addToCartAPI(product.product_id, quantity);
            await loadCart();
            return { success: true };
        } catch (error) {
            return {
                success: false,
                message:
                    error.response?.data?.message ||
                    "Could not add item to cart.",
            };
        }
    };

    // ==========================
    // REMOVE
    // ==========================
    const removeFromCart = async (cartItemId) => {
        try {
            await removeCartAPI(cartItemId);
            await loadCart();
        } catch (error) {
            console.error("Failed to remove item:", error);
        }
    };

    // ==========================
    // INCREASE / DECREASE
    // ==========================
    const increaseQty = async (cartItemId) => {
        const item = cartItems.find((i) => i.cart_item_id === cartItemId);
        if (!item) return;

        if (item.quantity >= item.stock_quantity) return;

        try {
            await updateCartAPI(cartItemId, item.quantity + 1);
            await loadCart();
        } catch (error) {
            console.error("Failed to update quantity:", error);
        }
    };

    const decreaseQty = async (cartItemId) => {
        const item = cartItems.find((i) => i.cart_item_id === cartItemId);
        if (!item) return;

        const nextQty = item.quantity - 1;

        try {
            if (nextQty <= 0) {
                await removeCartAPI(cartItemId);
            } else {
                await updateCartAPI(cartItemId, nextQty);
            }
            await loadCart();
        } catch (error) {
            console.error("Failed to update quantity:", error);
        }
    };

    // ==========================
    // CLEAR CART
    // ==========================
    const clearCart = async () => {
        try {
            await clearCartAPI();
        } catch (error) {
            console.error("Failed to clear cart:", error);
        } finally {
            setCartItems([]);
        }
    };

    // ==========================
    // TOTALS
    // ==========================
    const totalItems = cartItems.reduce(
        (sum, item) => sum + item.quantity,
        0
    );

    const totalPrice = cartItems.reduce(
        (sum, item) => sum + (item.discount_price || item.price) * item.quantity,
        0
    );

    return (
        <CartContext.Provider
            value={{
                cartItems,
                loading,
                addToCart,
                removeFromCart,
                increaseQty,
                decreaseQty,
                clearCart,
                loadCart,
                totalItems,
                totalPrice,
            }}
        >
            {children}
        </CartContext.Provider>
    );
}

export const useCart = () => useContext(CartContext);
