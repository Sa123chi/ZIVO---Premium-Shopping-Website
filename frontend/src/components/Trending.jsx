import { useEffect, useState } from "react";
import { getProducts } from "../services/productService";
import ProductCard from "./ProductCard";

function Trending() {
    const [products, setProducts] = useState([]);

    useEffect(() => {
        (async () => {
            const data = await getProducts({ sort: "newest" });
            setProducts((data || []).slice(0, 8));
        })();
    }, []);

    if (products.length === 0) return null;

    return (
        <section className="max-w-[1650px] mx-auto px-6 mb-32">

            <div className="flex justify-between items-center mb-14">

                <div>
                    <p className="uppercase tracking-[6px] text-[#D6B37A]">
                        Trending
                    </p>

                    <h2 className="text-5xl font-bold mt-3">
                        Trending Products
                    </h2>
                </div>

            </div>

            <div className="grid lg:grid-cols-4 md:grid-cols-2 gap-8">
                {products.map((item) => (
                    <ProductCard key={item.product_id} product={item} />
                ))}
            </div>

        </section>
    );
}

export default Trending;
