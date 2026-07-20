# 🛍️ ZIVO – Premium Full-Stack E-Commerce Platform

ZIVO is a full-stack e-commerce web application built with **React + Vite + Tailwind** on the
frontend and **Flask + SQLAlchemy + MySQL** on the backend. It supports product browsing,
search & filtering, wishlist, a persistent server-side cart, checkout, order history, and
authentication — styled after premium fashion/retail storefronts (Myntra, Ajio, Amazon).

---

## ✅ What was fixed / upgraded in this pass

This codebase was audited end-to-end and the following **functional bugs** were fixed:

- **Registration never worked** — `Register.jsx` only wrote to `localStorage` and never called
  the backend, so no account was ever created. It now calls `POST /register`.
- **Checkout was broken** — `Cart.jsx` referenced an undefined `handleCheckout` function and used
  `axios` without importing it, so "Place Order" did nothing or crashed.
- **Cart never reached the database** — "Add to Cart" only wrote to `localStorage`, but order
  placement reads from the backend's `Cart`/`CartItem` tables, so real checkouts would always fail
  with "Cart is empty." The cart is now fully backend-driven and synced through `/cart/*` APIs.
- **Wishlist heart icons did nothing** — clicking the heart on a product card only toggled local
  component state; items never appeared on the Wishlist page. Wishlist is now a shared, persisted
  context wired into every product card and the product detail page.
- **Homepage "Premium Collection" / "Deal of the Day" / "Trending" sections used fake, hardcoded
  products** whose IDs collided with real database product IDs (clicking a fake item could open
  the wrong real product) or contained a broken link with literal spaces in the URL. These
  sections now pull real, live products from the database.
- **Profile page read the wrong localStorage key** (`zivoUser` instead of `user`) and was always
  blank. It now fetches/updates the real profile via `GET/PUT /profile`.
- Duplicate, inconsistent Axios clients across the app were consolidated into a single
  `src/api/client.js`, and unused/dead files (an orphaned `AuthContext`, a second unused
  `CartProvider`, and broken admin/seller service stubs pointing at endpoints that don't exist)
  were removed.
- Backend: registration previously only accepted `@gmail.com` addresses — relaxed to accept any
  valid email; added search/sort/price-range filtering and pagination-ready query params to
  `GET /products`; added JSON (instead of HTML) error pages for 404/405/500; added a `PUT /profile`
  endpoint; product responses now include `brand_name`.
- Added toast notifications (`react-hot-toast`, already installed but unused) in place of jarring
  `alert()` popups, a global footer, out-of-stock handling, low-stock warnings, and a discount %
  badge on product cards.
- Added sort (price/name) and price-range/in-stock filters to the Products listing page, plus
  skeleton loading states.

---

## 🏗️ Tech Stack

**Frontend:** React 19, Vite, Tailwind CSS 4, React Router 7, Axios, Framer Motion, react-hot-toast, lucide-react

**Backend:** Flask 3, Flask-SQLAlchemy, Flask-JWT-Extended, Flask-Bcrypt, Flask-CORS, PyMySQL

**Database:** MySQL

---

## 📁 Project Structure

```
Zivo/
├── frontend/          React app (Vite)
│   └── src/
│       ├── api/        single Axios client (client.js)
│       ├── components/ navbar, product cards, homepage sections, footer
│       ├── context/     CartContext (backend-synced), WishlistContext (localStorage)
│       ├── pages/       Home, Products, ProductDetails, Cart, Checkout, Orders, etc.
│       └── services/    thin wrappers around the API (authService, cartService, ...)
├── backend/            Flask app
│   ├── models/          SQLAlchemy models
│   ├── routes/          Blueprints: auth, profile, products, cart, orders, categories, admin, seller
│   ├── utils/           auto-seed helper for a minimal starter catalog
│   └── uploads/         product images served at /uploads/...
└── database/
    ├── schema/          SQL table definitions (run in numeric order)
    └── seed/            SQL sample data — ~500 products, categories, brands, images (run in numeric order)
```

---

## 🚀 Running the project

### 1. Database (MySQL)

Create an empty database, then load everything in **one shot** using the combined
`database/setup_all.sql` file (schema + all seed data, already in the correct dependency order):

```bash
mysql -u root -p -e "CREATE DATABASE zivo_db"
mysql -u root -p zivo_db < database/setup_all.sql
```

**On Windows PowerShell**, don't pipe the file through `Get-Content` — PowerShell's pipeline can
mangle the text encoding and produce confusing "syntax error near ..." messages. Use `cmd /c` so
the file is redirected directly, byte-for-byte:

```powershell
mysql -u root -p -e "CREATE DATABASE zivo_db"
cmd /c "mysql -u root -p zivo_db < database\setup_all.sql"
```

You'll only be prompted for your password once. `database/schema/*.sql` and `database/seed/*.sql`
are still there individually if you ever want to inspect or re-run a specific piece, but running
`setup_all.sql` is the recommended path — it already has schema before seeds, and users seeded
before products (products reference a seller's user id).

### 2. Backend (Flask API)

```bash
cd backend
python -m venv venv
source venv/bin/activate        # Windows: venv\Scripts\activate
pip install -r requirements.txt
```

Edit `backend/.env` with your MySQL credentials (a template is already there):

```
DB_HOST=localhost
DB_PORT=3306
DB_NAME=zivo_db
DB_USER=root
DB_PASSWORD=your_password
SECRET_KEY=change-me
JWT_SECRET_KEY=change-me
FLASK_ENV=development
CORS_ORIGINS=http://localhost:5173
```

Run it:

```bash
python app.py
```

The API will be available at `http://127.0.0.1:5000`.

### 3. Frontend (React)

```bash
cd frontend
npm install
npm run dev
```

The `frontend/.env` already points at the backend:

```
VITE_API_URL=http://127.0.0.1:5000
```

Open `http://localhost:5173` in your browser.

### 4. Build for production

```bash
cd frontend
npm run build      # outputs to frontend/dist
```

---

## 🔑 Test account

Register a new account from the UI at `/register` — the seeded user in
`database/seed/07_seed_users.sql` has a placeholder password hash and cannot be logged into
directly, so creating a fresh account is the fastest way to get started.

Password requirements: 8+ characters with at least one uppercase letter, one lowercase letter,
one number, and one special character.

---

## 📝 Notes

- `node_modules/`, the Python `venv/`, and `frontend/dist/` are **not** included in this archive to
  keep it a manageable size — reinstall them with `npm install` / `pip install -r requirements.txt`
  as shown above.
- Payments are simulated in a sandbox mode server-side (no real card/UPI data is processed or
  stored) — the "payment method" you pick at checkout is stored on the order for display purposes.
