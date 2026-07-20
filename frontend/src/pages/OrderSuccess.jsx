import {
    CheckCircle,
} from "lucide-react";

import { Link } from "react-router-dom";

function OrderSuccess() {
    return (
        <section className="py-32 text-center">

            <CheckCircle
                size={120}
                className="
        mx-auto
        text-green-500
        "
            />

            <h1 className="text-6xl font-bold mt-10">
                Order Placed!
            </h1>

            <p className="text-gray-500 mt-6 text-xl">
                Thank you for shopping with ZIVO.
            </p>

            <Link to="/">
                <button
                    className="
          mt-12
          bg-[#2E4F46]
          text-white
          px-12
          py-5
          rounded-full
          "
                >
                    Continue Shopping
                </button>
            </Link>

        </section>
    );
}

export default OrderSuccess;