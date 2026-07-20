import { useNavigate } from "react-router-dom";
function FlashSale() {
    const navigate = useNavigate();

    return (
        <section className="max-w-[1650px] mx-auto px-6 mb-28">

            <div
                className="
        bg-gradient-to-r
        from-[#2E4F46]
        to-[#203c35]
        rounded-[50px]
        p-20
        text-white
        shadow-2xl
        "
            >
                <p className="uppercase tracking-[6px] text-[#D6B37A]">
                    Limited Time
                </p>

                <h2 className="text-7xl font-bold mt-5">
                    Flash Sale
                </h2>

                <p className="text-3xl mt-6 text-gray-200">
                    Up to 70% OFF on premium products.
                </p>

                <div className="flex gap-6 mt-10">

                    <div className="bg-white/10 px-8 py-5 rounded-3xl">
                        <h3 className="text-4xl font-bold">12</h3>
                        <p>Hours</p>
                    </div>

                    <div className="bg-white/10 px-8 py-5 rounded-3xl">
                        <h3 className="text-4xl font-bold">34</h3>
                        <p>Minutes</p>
                    </div>

                    <div className="bg-white/10 px-8 py-5 rounded-3xl">
                        <h3 className="text-4xl font-bold">55</h3>
                        <p>Seconds</p>
                    </div>

                </div>

                <button
                  onClick={() => navigate("/products")}
                    className="
          mt-12
          bg-white
          text-[#2E4F46]
          px-12
          py-4
          rounded-full
          font-bold
          hover:scale-105
          transition
          "
                >
                    Shop Deals
                </button>

            </div>

        </section>
    );
}

export default FlashSale;