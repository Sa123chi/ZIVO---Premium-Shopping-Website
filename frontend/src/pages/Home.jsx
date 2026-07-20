import Hero from "../components/Hero";
import Categories from "../components/Categories";
import SaleCards from "../components/SaleCards";
import OfferStrip from "../components/OfferStrip";
import BrandStrip from "../components/BrandStrip";
import FashionBanner from "../components/FashionBanner";
import PremiumCollection from "../components/PremiumCollection";
import DealOfDay from "../components/DealOfDay";
import FlashSale from "../components/FlashSale";
import Trending from "../components/Trending";
import Brands from "../components/Brands";
import Newsletter from "../components/Newsletter";

function Home() {
    return (
        <>
            <Hero />

            <div className="mt-16">
                <OfferStrip />
            </div>

            <div className="mt-20">
                <Categories />
            </div>

            <div className="mt-24">
                <SaleCards />
            </div>

            <div className="mt-24">
                <BrandStrip />
            </div>

            <div className="mt-24">
                <PremiumCollection />
            </div>

            <div className="mt-24">
                <FashionBanner />
            </div>

            <div className="mt-24">
                <DealOfDay />
            </div>

            <div className="mt-24">
                <FlashSale />
            </div>

            <div className="mt-24">
                <Trending />
            </div>

            <div className="mt-24">
                <Brands />
            </div>

            <div className="mt-28">
                <Newsletter />
            </div>
        </>
    );
}

export default Home;