function Footer() {
    return (
        <footer className="bg-black text-white py-20">

            <div className="max-w-[1650px] mx-auto px-6 grid lg:grid-cols-4 gap-14">

                <div>
                    <h2 className="text-4xl font-black">
                        ZIVO
                    </h2>

                    <p className="mt-6 text-gray-400">
                        Premium Shopping Experience.
                    </p>
                </div>

                <div>
                    <h3 className="font-bold mb-5">
                        Shop
                    </h3>

                    <div className="space-y-3 text-gray-400">
                        <p>Electronics</p>
                        <p>Fashion</p>
                        <p>Beauty</p>
                    </div>
                </div>

                <div>
                    <h3 className="font-bold mb-5">
                        Support
                    </h3>

                    <div className="space-y-3 text-gray-400">
                        <p>Contact</p>
                        <p>Returns</p>
                        <p>FAQs</p>
                    </div>
                </div>

                <div>
                    <h3 className="font-bold mb-5">
                        Follow Us
                    </h3>

                    <div className="space-y-3 text-gray-400">
                        <p>Instagram</p>
                        <p>LinkedIn</p>
                        <p>Twitter</p>
                    </div>
                </div>

            </div>

        </footer>
    );
}

export default Footer;