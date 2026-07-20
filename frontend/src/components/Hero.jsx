import { motion } from "framer-motion";
import { useNavigate } from "react-router-dom";

function Hero() {
    const navigate = useNavigate();

    return (
        <section className="px-6 mt-8">

            <div
                className="
        relative
        h-[550px]
        rounded-[45px]
        overflow-hidden
        max-w-[1600px]
        mx-auto
        "
            >

                <img
                    src="https://images.pexels.com/photos/994523/pexels-photo-994523.jpeg"
                    className="absolute inset-0 w-full h-full object-cover"
                />

                <div className="absolute inset-0 bg-black/40"></div>

                <motion.div
                    initial={{ opacity: 0, y: 80 }}
                    animate={{ opacity: 1, y: 0 }}
                    transition={{ duration: 1 }}
                    className="
          absolute
          left-16
          top-1/2
          -translate-y-1/2
          "
                >

                    <p className="uppercase tracking-[8px] text-[#D6B37A]">
                        NEW SEASON
                    </p>

                    <h1 className="text-7xl text-white font-bold mt-5">
                        Discover
                        <br />
                        Luxury Fashion
                    </h1>

                    <button
                        onClick={() => navigate("/products")}
                        className="
            mt-10
            bg-[#2E4F46]
            text-white
            px-10
            py-4
            rounded-full
            hover:bg-[#203c35]
            duration-300
            "
                    >
                        Shop Now
                    </button>

                </motion.div>

            </div>

        </section>
    );
}

export default Hero;