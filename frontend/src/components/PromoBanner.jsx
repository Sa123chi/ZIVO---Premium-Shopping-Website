import { useNavigate } from "react-router-dom";
function PromoBanner() {
    const navigate = useNavigate();

    return (
        <section className="py-20 px-8">

            <div
                className="
        max-w-7xl
        mx-auto
        rounded-[40px]
        overflow-hidden
        bg-gradient-to-r
        from-[#2E4F46]
        to-[#3f6a5e]
        text-white
      "
            >
                <div className="grid lg:grid-cols-2 items-center">

                    <div className="p-14">

                        <p className="uppercase tracking-[6px] text-[#C7A16B] mb-4">
                            Limited Offer
                        </p>

                        <h2 className="text-5xl font-bold leading-tight">
                            End Of Season
                            <br />
                            Sale
                        </h2>

                        <p className="mt-6 text-lg text-gray-200">
                            Up to 70% OFF on premium fashion brands.
                        </p>

                        <button
                  onClick={() => navigate("/products")}
                            className="
              mt-8
              bg-white
              text-[#2E4F46]
              px-8
              py-4
              rounded-full
              font-semibold
              hover:scale-105
              transition
            "
                        >
                            Explore Sale
                        </button>
                    </div>

                    <img
                        src="https://images.unsplash.com/photo-1483985988355-763728e1935b"
                        className="h-full w-full object-cover"
                    />
                </div>
            </div>
        </section>
    );
}

export default PromoBanner;