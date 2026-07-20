import ProductCard from "../components/ProductCard";
import { useEffect, useMemo, useState } from "react";
import { getProducts } from "../services/productService";
import { useSearchParams } from "react-router-dom";
import { SlidersHorizontal, X } from "lucide-react";

const SORT_OPTIONS = [
  { value: "featured", label: "Featured" },
  { value: "price_asc", label: "Price: Low to High" },
  { value: "price_desc", label: "Price: High to Low" },
  { value: "name_asc", label: "Name: A to Z" },
];

function Products() {
  const [searchParams] = useSearchParams();

  const category = decodeURIComponent(searchParams.get("category") || "");
  const search = decodeURIComponent(searchParams.get("search") || "");

  const [products, setProducts] = useState([]);
  const [loading, setLoading] = useState(true);
  const [sort, setSort] = useState("featured");
  const [maxPrice, setMaxPrice] = useState(null);
  const [priceCeiling, setPriceCeiling] = useState(0);
  const [inStockOnly, setInStockOnly] = useState(false);
  const [showFilters, setShowFilters] = useState(false);

  useEffect(() => {
    loadProducts();
  }, []);

  const loadProducts = async () => {
    try {
      const data = await getProducts();
      setProducts(data || []);

      const highest = Math.max(
        0,
        ...(data || []).map((p) => Number(p.price) || 0)
      );
      setPriceCeiling(highest);
      setMaxPrice(highest);
    } catch (error) {
      console.error(error);
    } finally {
      setLoading(false);
    }
  };

  const filteredProducts = useMemo(() => {
    let result = [...products];

    if (category) {
      result = result.filter(
        (p) =>
          p.category_name?.trim().toLowerCase() ===
          category.trim().toLowerCase()
      );
    }

    if (search) {
      const term = search.toLowerCase();
      result = result.filter(
        (p) =>
          p.product_name?.toLowerCase().includes(term) ||
          p.category_name?.toLowerCase().includes(term) ||
          p.brand_name?.toLowerCase().includes(term) ||
          p.description?.toLowerCase().includes(term)
      );
    }

    if (maxPrice !== null) {
      result = result.filter(
        (p) => (p.discount_price || p.price || 0) <= maxPrice
      );
    }

    if (inStockOnly) {
      result = result.filter((p) => p.stock_quantity > 0);
    }

    switch (sort) {
      case "price_asc":
        result.sort(
          (a, b) =>
            (a.discount_price || a.price) - (b.discount_price || b.price)
        );
        break;
      case "price_desc":
        result.sort(
          (a, b) =>
            (b.discount_price || b.price) - (a.discount_price || a.price)
        );
        break;
      case "name_asc":
        result.sort((a, b) =>
          (a.product_name || "").localeCompare(b.product_name || "")
        );
        break;
      default:
        break;
    }

    return result;
  }, [products, category, search, maxPrice, inStockOnly, sort]);

  const resetFilters = () => {
    setMaxPrice(priceCeiling);
    setInStockOnly(false);
    setSort("featured");
  };

  if (loading) {
    return (
      <div className="max-w-[1650px] mx-auto px-6 py-16">
        <div className="h-10 w-64 bg-gray-200 rounded-full animate-pulse mb-14" />
        <div className="grid lg:grid-cols-5 md:grid-cols-3 sm:grid-cols-2 gap-6">
          {Array.from({ length: 10 }).map((_, i) => (
            <div
              key={i}
              className="h-[420px] bg-gray-100 rounded-[30px] animate-pulse"
            />
          ))}
        </div>
      </div>
    );
  }

  return (
    <div className="max-w-[1650px] mx-auto px-6 py-16">

      <div className="flex flex-wrap items-end justify-between gap-4 mb-10">

        <div>
          <h1 className="text-5xl font-bold">
            {category ? category : search ? `Search : ${search}` : "All Products"}
          </h1>

          <p className="text-gray-500 mt-3">
            {filteredProducts.length} product
            {filteredProducts.length !== 1 && "s"} found
          </p>
        </div>

        <div className="flex items-center gap-4">

          <button
            onClick={() => setShowFilters((s) => !s)}
            className="lg:hidden flex items-center gap-2 border rounded-full px-5 py-3 font-semibold"
          >
            <SlidersHorizontal size={18} />
            Filters
          </button>

          <select
            value={sort}
            onChange={(e) => setSort(e.target.value)}
            className="border rounded-full px-5 py-3 font-semibold outline-none focus:border-[#2E4F46]"
          >
            {SORT_OPTIONS.map((opt) => (
              <option key={opt.value} value={opt.value}>
                Sort: {opt.label}
              </option>
            ))}
          </select>

        </div>

      </div>

      <div className="grid lg:grid-cols-[260px_1fr] gap-10">

        {/* SIDEBAR FILTERS */}

        <aside
          className={`
          ${showFilters ? "block" : "hidden"}
          lg:block
          bg-white
          rounded-[30px]
          shadow-md
          p-8
          h-fit
          lg:sticky
          lg:top-32
          `}
        >

          <div className="flex items-center justify-between mb-8">
            <h2 className="text-xl font-bold">Filters</h2>

            <button
              onClick={() => setShowFilters(false)}
              className="lg:hidden"
            >
              <X size={20} />
            </button>
          </div>

          <div className="mb-8">
            <h3 className="font-semibold mb-4">Max Price</h3>

            <input
              type="range"
              min="0"
              max={priceCeiling || 1000}
              value={maxPrice ?? priceCeiling}
              onChange={(e) => setMaxPrice(Number(e.target.value))}
              className="w-full accent-[#2E4F46]"
            />

            <p className="text-gray-500 mt-2">
              Up to ₹{(maxPrice ?? priceCeiling).toLocaleString()}
            </p>
          </div>

          <div className="mb-8">
            <label className="flex items-center gap-3 cursor-pointer">
              <input
                type="checkbox"
                checked={inStockOnly}
                onChange={(e) => setInStockOnly(e.target.checked)}
                className="w-5 h-5 accent-[#2E4F46]"
              />
              <span className="font-semibold">In Stock Only</span>
            </label>
          </div>

          <button
            onClick={resetFilters}
            className="w-full border rounded-full py-3 font-semibold hover:bg-gray-50 duration-300"
          >
            Reset Filters
          </button>

        </aside>

        {/* PRODUCT GRID */}

        {filteredProducts.length === 0 ? (
          <div className="py-40 text-center">
            <h2 className="text-4xl font-bold">No Products Found</h2>
            <p className="mt-4 text-gray-500">
              Try adjusting your filters or search terms.
            </p>
          </div>
        ) : (
          <div className="grid lg:grid-cols-4 md:grid-cols-3 sm:grid-cols-2 gap-6">
            {filteredProducts.map((product) => (
              <ProductCard key={product.product_id} product={product} />
            ))}
          </div>
        )}

      </div>
    </div>
  );
}

export default Products;
