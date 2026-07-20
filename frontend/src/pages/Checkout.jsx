import {
    useCart,
} from "../context/CartContext";

import {
    placeOrder,
} from "../services/orderService";

import {
    useNavigate,
    Link,
} from "react-router-dom";

import {
    useEffect,
    useState,
} from "react";

import toast from "react-hot-toast";

const PAYMENT_METHODS = [
    { id: "Cash on Delivery", label: "💵 Cash on Delivery" },
    { id: "Card", label: "💳 Credit / Debit Card" },
    { id: "UPI", label: "📱 UPI Payment" },
];

function Checkout() {

    const {
        cartItems,
        totalPrice,
        clearCart,
        loading: cartLoading,
    } = useCart();

    const navigate =
        useNavigate();

    const [
        loading,
        setLoading,
    ] = useState(false);

    const [paymentMethod, setPaymentMethod] = useState(
        PAYMENT_METHODS[0].id
    );

    useEffect(() => {
        if (!cartLoading && cartItems.length === 0) {
            navigate("/cart");
        }
    }, [cartLoading, cartItems, navigate]);

    const handleOrder =
        async () => {

            try {

                setLoading(true);

                const data =
                    await placeOrder(paymentMethod);

                toast.success(
                    "Order placed successfully!"
                );

                await clearCart();

                navigate(
                    "/orders"
                );

            }

            catch (error) {

                console.log(
                    "ORDER ERROR:",
                    error
                );

                toast.error(

                    error.response?.data
                        ?.message ||

                    "Order Failed"

                );
            }

            setLoading(false);
        };

    return (
        <section className="max-w-[1400px] mx-auto px-6 py-20">

            <h1 className="text-5xl font-bold mb-14">
                Checkout
            </h1>

            <div className="grid lg:grid-cols-2 gap-16">

                <div>

                    <h2 className="text-3xl font-bold mb-10">
                        Order Summary
                    </h2>

                    <div className="space-y-5">

                        {cartItems.map(
                            (item) => (

                                <div
                                    key={
                                        item.cart_item_id
                                    }
                                    className="
                  bg-white
                  rounded-3xl
                  p-6
                  shadow
                  flex
                  justify-between
                  "
                                >

                                    <div>

                                        <h3 className="font-bold">

                                            {
                                                item.product_name
                                            }

                                        </h3>

                                        <p>

                                            Qty :
                                            {" "}
                                            {
                                                item.quantity
                                            }

                                        </p>

                                    </div>

                                    <h3 className="font-bold">

                                        ₹
                                        {(
                                            (
                                                item.discount_price ||
                                                item.price
                                            ) *
                                            item.quantity
                                        ).toLocaleString()}

                                    </h3>

                                </div>
                            )
                        )}

                    </div>

                </div>

                <div className="bg-white rounded-[40px] shadow-xl p-10 h-fit">

                    <h2 className="text-3xl font-bold mb-8">
                        Payment Summary
                    </h2>

                    <div className="space-y-5">

                        <div className="flex justify-between">

                            <span>
                                Total
                            </span>

                            <span>

                                ₹
                                {totalPrice.toLocaleString()}

                            </span>

                        </div>

                        <div className="flex justify-between">

                            <span>
                                Shipping
                            </span>

                            <span>
                                FREE
                            </span>

                        </div>

                        <hr />

                        <div className="flex justify-between text-2xl font-bold">

                            <span>
                                Grand Total
                            </span>

                            <span>

                                ₹
                                {totalPrice.toLocaleString()}

                            </span>

                        </div>

                    </div>

                    <div className="mt-10">

                        <h3 className="font-bold text-lg mb-4">
                            Payment Method
                        </h3>

                        <div className="space-y-3">

                            {PAYMENT_METHODS.map((method) => (
                                <button
                                    key={method.id}
                                    onClick={() => setPaymentMethod(method.id)}
                                    className={`
                                    w-full
                                    border-2
                                    p-4
                                    rounded-2xl
                                    text-left
                                    font-medium
                                    duration-200
                                    ${
                                        paymentMethod === method.id
                                            ? "border-[#2E4F46] bg-[#2E4F46]/5"
                                            : "border-gray-200"
                                    }
                                    `}
                                >
                                    {method.label}
                                </button>
                            ))}

                        </div>

                    </div>

                    <button
                        onClick={
                            handleOrder
                        }
                        disabled={
                            loading
                        }
                        className="
            w-full
            mt-10
            bg-[#2E4F46]
            text-white
            py-5
            rounded-full
            text-lg
            font-bold
            "
                    >

                        {loading
                            ? "Placing..."
                            : "Place Order"}

                    </button>

                </div>

            </div>

        </section>
    );
}

export default Checkout;