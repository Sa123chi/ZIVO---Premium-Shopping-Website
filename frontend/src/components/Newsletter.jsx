function Newsletter() {
    return (
        <section className="bg-[#2E4F46] py-24 mt-32">

            <div className="max-w-[900px] mx-auto text-center">

                <h2 className="text-5xl font-bold text-white">
                    Join The ZIVO Club
                </h2>

                <p className="text-white/70 mt-5">
                    Get exclusive deals and new arrivals.
                </p>

                <div className="flex mt-10 bg-white rounded-full overflow-hidden">

                    <input
                        placeholder="Enter your email"
                        className="
            flex-1
            px-8
            py-5
            outline-none
            "
                    />

                    <button
                        className="
            bg-[#D6B37A]
            px-10
            text-white
            font-semibold
            "
                    >
                        Subscribe
                    </button>

                </div>

            </div>

        </section>
    );
}

export default Newsletter;