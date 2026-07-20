import { useEffect, useState } from "react";
import { Clock } from "lucide-react";
import { Link } from "react-router-dom";

import { getProducts } from "../services/productService";
import { resolveImageUrl } from "../api/client";

function DealOfDay() {
    const [deals, setDeals] = useState([]);

    useEffect(() => {
        (async () => {
            const products = await getProducts();

            const discounted = (products || [])
                .filter((p) => p.discount_price && p.price > p.discount_price)
                .sort((a, b) => {
                    const discA = (a.price - a.discount_price) / a.price;
                    const discB = (b.price - b.discount_price) / b.price;
                    return discB - discA;
                })
                .slice(0, 3);

            setDeals(discounted);
        })();
    }, []);

    if (deals.length === 0) return null;

    return (
        <section className="max-w-[1650px] mx-auto px-6 mb-28">

            {/* Heading */}

            <div className="flex items-center gap-4 mb-14">

                <div className="bg-[#F6E7D7] p-4 rounded-3xl">
                    <Clock className="text-[#D6B37A]" size={34} />
                </div>

                <div>
                    <p className="uppercase tracking-[6px] text-[#D6B37A]">
                        Limited Time
                    </p>

                    <h2 className="text-5xl font-bold mt-2">
                        Deal Of The Day
                    </h2>
                </div>

            </div>

            {/* Cards */}

            <div className="grid lg:grid-cols-3 gap-10">

                {deals.map((item) => {
                    const percentOff = Math.round(
                        ((item.price - item.discount_price) / item.price) * 100
                    );

                    return (
                        <Link key={item.product_id} to={`/product/${item.product_id}`}>

                            <div
                                className="
              bg-white
              rounded-[35px]
              overflow-hidden
              shadow-lg
              hover:shadow-2xl
              hover:-translate-y-3
              transition-all
              duration-500
              group
              "
                            >

                                <div className="overflow-hidden">
                                    <img
                                        src={resolveImageUrl(item.image_url)}
                                        alt={item.product_name}
                                        className="
                  h-[380px]
                  w-full
                  object-cover
                  group-hover:scale-110
                  duration-700
                  "
                                    />
                                </div>

                                <div className="p-7">

                                    <div className="inline-block bg-red-100 text-red-600 px-4 py-2 rounded-full text-sm font-semibold">
                                        {percentOff}% OFF 🔥
                                    </div>

                                    <h3 className="text-2xl font-bold mt-5 line-clamp-1">
                                        {item.product_name}
                                    </h3>

                                    <div className="flex gap-3 items-center mt-5">
                                        <p className="text-3xl font-bold">
                                            ₹{item.discount_price.toLocaleString()}
                                        </p>

                                        <p className="line-through text-gray-400">
                                            ₹{item.price.toLocaleString()}
                                        </p>
                                    </div>

                                    <div
                                        className="
                  mt-7
                  w-full
                  bg-[#2E4F46]
                  text-white
                  py-4
                  rounded-full
                  font-semibold
                  text-center
                  group-hover:bg-[#203c35]
                  transition
                  "
                                    >
                                        Shop Deal
                                    </div>

                                </div>

                            </div>

                        </Link>
                    );
                })}

            </div>

        </section>
    );
}

export default DealOfDay;
