const brands = [
    "Apple",
    "Nike",
    "Samsung",
    "Adidas",
    "Sony",
    "Gucci",
    "Puma",
    "Boat",
];

function Brands() {
    return (
        <section className="max-w-[1650px] mx-auto px-6 py-1">

            <div className="text-center mb-16">

                <p className="uppercase tracking-[6px] text-[#D6B37A]">
                    Trusted By Millions
                </p>

                <h2 className="text-5xl font-bold mt-4">
                    Top Brands
                </h2>

            </div>

            <div className="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-8 gap-8">

                {brands.map((brand) => (
                    <div
                        key={brand}
                        className="
            bg-white
            rounded-[30px]
            py-8
            text-center
            shadow-md
            hover:shadow-xl
            transition
            "
                    >
                        <h3 className="font-bold text-xl">
                            {brand}
                        </h3>
                    </div>
                ))}

            </div>

        </section>
    );
}

export default Brands;