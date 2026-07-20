import { useParams } from "react-router-dom";

function ProductPage() {
    const { id } = useParams();

    return (
        <div className="min-h-screen bg-[#F8F6F2] p-10">

            <div className="max-w-7xl mx-auto grid md:grid-cols-2 gap-16">

                <img
                    src="https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg"
                    className="rounded-[40px] shadow-xl"
                />

                <div>

                    <p className="text-[#D6B37A] uppercase tracking-[4px]">
                        Premium Collection
                    </p>

                    <h1 className="text-5xl font-bold mt-4">
                        Premium Jacket #{id}
                    </h1>

                    <p className="text-4xl font-bold text-[#2E4F46] mt-8">
                        ₹3,999
                    </p>

                    <p className="text-gray-500 mt-8 leading-8">
                        Premium quality fashion item with modern styling and luxury comfort.
                    </p>

                    <div className="flex gap-6 mt-12">

                        <button
                            className="
              bg-[#2E4F46]
              text-white
              px-12
              py-5
              rounded-full
              font-semibold
              "
                        >
                            Add To Cart
                        </button>

                        <button
                            className="
              border-2
              border-[#2E4F46]
              px-12
              py-5
              rounded-full
              font-semibold
              "
                        >
                            Buy Now
                        </button>

                    </div>

                </div>

            </div>

        </div>
    );
}

export default ProductPage;