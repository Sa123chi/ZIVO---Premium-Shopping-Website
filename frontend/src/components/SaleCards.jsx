import { useNavigate } from "react-router-dom";

const sales = [
  {
    title: "Women's Collection",
    subtitle: "UP TO 60% OFF",
    image:
      "https://images.unsplash.com/photo-1483985988355-763728e1935b",
    color: "bg-[#F6E7D7]",
  },
  {
    title: "Men's Fashion",
    subtitle: "NEW ARRIVALS",
    image:
      "https://images.unsplash.com/photo-1515886657613-9f3515b0c78f",
    color: "bg-[#E7EFEA]",
  },
  {
    title: "Electronics",
    subtitle: "PREMIUM DEALS",
    image:
      "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9",
    color: "bg-[#F2EAF6]",
  },
];

function SaleCards() {
    const navigate = useNavigate();

  return (
    <section className="max-w-[1650px] mx-auto px-6 mb-28">

      <div className="grid lg:grid-cols-3 gap-10">

        {sales.map((item) => (
          <div
            key={item.title}
            className="
            relative
            h-[350px]
            rounded-[40px]
            overflow-hidden
            group
            cursor-pointer
            shadow-xl
            "
          >
            <img
              src={item.image}
              className="
              absolute
              w-full
              h-full
              object-cover
              group-hover:scale-110
              duration-700
              "
            />

            <div className="absolute inset-0 bg-black/35"></div>

            <div className="absolute left-10 bottom-10 text-white">

              <p className="text-lg opacity-90">
                {item.title}
              </p>

              <h2 className="text-5xl font-bold mt-3 leading-tight">
                {item.subtitle}
              </h2>

              <button
                  onClick={() => navigate("/products")}
                className="
                mt-8
                bg-white
                text-black
                px-8
                py-3
                rounded-full
                font-semibold
                hover:scale-105
                transition
                "
              >
                Shop Now
              </button>

            </div>

          </div>
        ))}

      </div>

    </section>
  );
}

export default SaleCards;
