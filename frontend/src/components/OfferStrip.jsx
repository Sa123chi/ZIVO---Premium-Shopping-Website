function OfferStrip() {
    return (
        <section className="max-w-[1650px] mx-auto px-6 mb-36">

            <div className="grid md:grid-cols-5 gap-4">

                {[
                    "🔥 Flat 70% OFF",
                    "🚚 Free Shipping",
                    "💎 Premium Brands",
                    "⚡ New Arrivals",
                    "🎁 Extra ₹500 OFF",
                ].map((item) => (
                    <div
                        key={item}
                        className="bg-white rounded-2xl p-5 text-center shadow"
                    >
                        {item}
                    </div>
                ))}

            </div>

        </section>
    );
}

export default OfferStrip;