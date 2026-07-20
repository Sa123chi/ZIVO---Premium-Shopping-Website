import { useNavigate } from "react-router-dom";
function MegaBanner() {
    const navigate = useNavigate();

    return (
        <section className="py-24">

            <div
                className="
      max-w-7xl
      mx-auto
      rounded-[50px]
      overflow-hidden
      relative
      h-[500px]
      "
            >

                <img
                    src="https://images.unsplash.com/photo-1496747611176-843222e1e57c"
                    className="w-full h-full object-cover"
                />

                <div
                    className="
        absolute
        inset-0
        bg-black/30
        flex
        items-center
        "
                >

                    <div className="px-20 text-white">

                        <p className="tracking-[5px] uppercase">
                            Premium Collection
                        </p>

                        <h1 className="text-7xl font-bold mt-6">
                            Fashion
                            <br />
                            Reimagined
                        </h1>

                        <button
                  onClick={() => navigate("/products")}
                            className="
            mt-10
            bg-white
            text-black
            px-8
            py-4
            rounded-full
            font-semibold
            "
                        >
                            Explore
                        </button>

                    </div>

                </div>

            </div>

        </section>
    );
}

export default MegaBanner;