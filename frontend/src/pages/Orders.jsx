import {
    useEffect,
    useState,
} from "react";

import { Link, useNavigate } from "react-router-dom";
import toast from "react-hot-toast";

import {
    getOrders,
    cancelOrder,
} from "../services/orderService";

const STATUS_STYLES = {
    Pending: "bg-yellow-100 text-yellow-700",
    Confirmed: "bg-blue-100 text-blue-700",
    Shipped: "bg-indigo-100 text-indigo-700",
    Delivered: "bg-green-100 text-green-700",
    Cancelled: "bg-red-100 text-red-700",
};

function Orders() {

    const navigate = useNavigate();

    const [orders, setOrders] = useState([]);
    const [loading, setLoading] = useState(true);
    const [cancellingId, setCancellingId] = useState(null);

    useEffect(() => {
        if (!localStorage.getItem("token")) {
            navigate("/login");
            return;
        }
        loadOrders();
    }, [navigate]);

    const loadOrders = async () => {
        try {
            const data = await getOrders();
            setOrders(data || []);
        } catch (error) {
            console.log(error);
        }

        setLoading(false);
    };

    const handleCancel = async (orderId) => {
        try {
            setCancellingId(orderId);
            await cancelOrder(orderId);
            toast.success("Order cancelled");
            await loadOrders();
        } catch (error) {
            toast.error(
                error.response?.data?.message || "Could not cancel order"
            );
        } finally {
            setCancellingId(null);
        }
    };

    if (loading) {
        return (
            <div className="py-40 text-center">
                <h1 className="text-4xl font-bold text-gray-400">
                    Loading Orders...
                </h1>
            </div>
        );
    }

    return (
        <section className="max-w-[1500px] mx-auto px-6 py-20">

            <h1 className="text-5xl font-bold mb-14">
                My Orders
            </h1>

            {orders.length === 0 ? (

                <div className="py-40 text-center">
                    <h2 className="text-4xl font-bold">
                        No Orders Yet
                    </h2>

                    <Link
                        to="/products"
                        className="
                        inline-block
                        mt-10
                        bg-[#2E4F46]
                        text-white
                        px-10
                        py-4
                        rounded-full
                        font-semibold
                        hover:bg-[#203c35]
                        duration-300
                        "
                    >
                        Start Shopping
                    </Link>
                </div>

            ) : (

                <div className="space-y-8">

                    {orders.map((order) => (
                        <div
                            key={order.order_id}
                            className="
                bg-white
                rounded-[35px]
                shadow-lg
                p-8
                "
                        >

                            <div className="grid lg:grid-cols-5 gap-5 items-center">

                                <div>
                                    <p className="text-gray-500">Order ID</p>
                                    <h3 className="font-bold">#{order.order_id}</h3>
                                </div>

                                <div>
                                    <p className="text-gray-500">Date</p>
                                    <h3>
                                        {new Date(order.created_at).toLocaleDateString()}
                                    </h3>
                                </div>

                                <div>
                                    <p className="text-gray-500">Total</p>
                                    <h3 className="font-bold">
                                        ₹{Number(order.total_amount).toLocaleString()}
                                    </h3>
                                </div>

                                <div>
                                    <p className="text-gray-500">Status</p>
                                    <span
                                        className={`inline-block mt-1 px-4 py-1 rounded-full text-sm font-bold ${
                                            STATUS_STYLES[order.order_status] ||
                                            "bg-gray-100 text-gray-700"
                                        }`}
                                    >
                                        {order.order_status}
                                    </span>
                                </div>

                                <div className="flex items-center justify-between">
                                    <div>
                                        <p className="text-gray-500">Payment</p>
                                        <h3>{order.payment_status}</h3>
                                    </div>

                                    {order.order_status === "Pending" && (
                                        <button
                                            onClick={() => handleCancel(order.order_id)}
                                            disabled={cancellingId === order.order_id}
                                            className="text-red-500 text-sm font-semibold hover:underline disabled:opacity-50"
                                        >
                                            {cancellingId === order.order_id
                                                ? "Cancelling..."
                                                : "Cancel"}
                                        </button>
                                    )}
                                </div>

                            </div>

                        </div>
                    ))}

                </div>

            )}

        </section>
    );
}

export default Orders;
