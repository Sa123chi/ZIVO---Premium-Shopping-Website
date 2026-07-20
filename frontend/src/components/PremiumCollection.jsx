import { useEffect, useState } from "react";
import { getProducts } from "../services/productService";
import ProductCard from "./ProductCard";

function PremiumCollection() {
    const [products, setProducts] = useState([]);

    useEffect(() => {
        (async () => {
            const data = await getProducts({ sort: "price_desc" });
            setProducts((data || []).slice(0, 5));
        })();
    }, []);

    if (products.length === 0) return null;

    return (
        <section className="max-w-[1700px] mx-auto px-6 mt-24 mb-36">

            <p className="uppercase tracking-[6px] text-[#D6B37A]">
                Curated Collection
            </p>

            <h2 className="text-5xl font-bold mt-3 mb-14">
                Premium Collection
            </h2>

            <div
                className="
        grid
        lg:grid-cols-5
        md:grid-cols-3
        sm:grid-cols-2
        grid-cols-1
        gap-6
        "
            >
                {products.map((item) => (
                    <ProductCard key={item.product_id} product={item} />
                ))}
            </div>

        </section>
    );
}

export default PremiumCollection;
