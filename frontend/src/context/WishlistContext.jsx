import {
    createContext,
    useContext,
    useEffect,
    useState,
} from "react";

const WishlistContext = createContext();

const STORAGE_KEY = "zivo_wishlist";

export function WishlistProvider({ children }) {
    const [wishlistItems, setWishlistItems] = useState(() => {
        try {
            const saved = localStorage.getItem(STORAGE_KEY);
            return saved ? JSON.parse(saved) : [];
        } catch {
            return [];
        }
    });

    useEffect(() => {
        localStorage.setItem(STORAGE_KEY, JSON.stringify(wishlistItems));
    }, [wishlistItems]);

    const isInWishlist = (productId) =>
        wishlistItems.some((item) => item.product_id === productId);

    const addToWishlist = (product) => {
        setWishlistItems((prev) => {
            if (prev.some((item) => item.product_id === product.product_id)) {
                return prev;
            }
            return [...prev, product];
        });
    };

    const removeWishlist = (productId) => {
        setWishlistItems((prev) =>
            prev.filter((item) => item.product_id !== productId)
        );
    };

    const toggleWishlist = (product) => {
        if (isInWishlist(product.product_id)) {
            removeWishlist(product.product_id);
        } else {
            addToWishlist(product);
        }
    };

    return (
        <WishlistContext.Provider
            value={{
                wishlistItems,
                addToWishlist,
                removeWishlist,
                toggleWishlist,
                isInWishlist,
            }}
        >
            {children}
        </WishlistContext.Provider>
    );
}

export const useWishlist = () => useContext(WishlistContext);
