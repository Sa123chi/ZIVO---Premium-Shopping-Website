
const brands = [
  "Nike",
  "Adidas",
  "Puma",
  "Apple",
  "Samsung",
  "Zara",
  "Levi's",
  "Gucci",
  "Louis Vuitton",
  "Tommy Hilfiger",
];

function BrandStrip() {
  return (
    <section className="py-16 bg-white overflow-hidden mb-28">

      <div className="text-center mb-12">

        <p className="uppercase tracking-[6px] text-[#D6B37A]">
          Trusted By Millions
        </p>

        <h2 className="text-5xl font-bold mt-4">
          Premium Brands
        </h2>

      </div>

      <div className="relative overflow-hidden">

        <div className="flex gap-16 animate-marquee whitespace-nowrap">

          {[...brands, ...brands].map((brand, index) => (
            <div
              key={index}
              className="
              text-4xl
              font-bold
              text-gray-300
              hover:text-[#2E4F46]
              transition
              cursor-pointer
              "
            >
              {brand}
            </div>
          ))}

        </div>

      </div>

    </section>
  );
}

export default BrandStrip;
