import { Link } from "react-router-dom";
import { useEffect, useState } from "react";
import api, { resolveImageUrl } from "../api/client";

function Categories() {
  const [categories, setCategories] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    (async () => {
      try {
        const res = await api.get("/categories");
        setCategories(res.data || []);
      } catch (error) {
        console.error("Failed to load categories:", error);
      } finally {
        setLoading(false);
      }
    })();
  }, []);

  if (loading || categories.length === 0) return null;

  return (
    <section className="max-w-[1650px] mx-auto px-6 mb-32">

      <div className="text-center mb-16">

        <p className="uppercase tracking-[6px] text-[#D6B37A]">
          Shop By Category
        </p>

        <h2 className="text-5xl font-bold mt-4">
          Discover Collections
        </h2>

      </div>

      <div className="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-10">

        {categories.map((item) => (

          <Link
            key={item.category_id}
            to={`/products?category=${encodeURIComponent(
              item.category_name
            )}`}
          >

            <div className="flex flex-col items-center cursor-pointer group">

              <div
                className="
                w-[170px]
                h-[170px]
                rounded-full
                overflow-hidden
                shadow-lg
                bg-white
                transition
                duration-500
                group-hover:shadow-2xl
                "
              >
                <img
                  src={resolveImageUrl(item.category_image)}
                  alt={item.category_name}
                  loading="lazy"
                  className="
                  w-full
                  h-full
                  object-cover
                  group-hover:scale-110
                  duration-700
                  "
                />
              </div>

              <h3
                className="
                mt-6
                text-xl
                font-semibold
                text-center
                group-hover:text-[#2E4F46]
                transition
                "
              >
                {item.category_name}
              </h3>

            </div>

          </Link>

        ))}

      </div>

    </section>
  );
}

export default Categories;
