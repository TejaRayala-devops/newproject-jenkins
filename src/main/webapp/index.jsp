<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>Horizon — Modern E‑Commerce Experience</title>
    <!-- Google Fonts + Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #ffffff;
            --surface: #fafcfd;
            --primary: #0f172a;
            --primary-soft: #1e293b;
            --accent: #3b82f6;
            --accent-glow: #60a5fa;
            --accent-dark: #2563eb;
            --muted: #64748b;
            --muted-light: #94a3b8;
            --border: #e2e8f0;
            --card-bg: #ffffff;
            --success: #10b981;
            --danger: #ef4444;
            --warning: #f59e0b;
            --radius-sm: 12px;
            --radius: 20px;
            --radius-lg: 28px;
            --shadow-sm: 0 4px 12px rgba(0, 0, 0, 0.02), 0 1px 2px rgba(0, 0, 0, 0.03);
            --shadow-md: 0 12px 28px -8px rgba(0, 0, 0, 0.08), 0 0 0 1px rgba(0, 0, 0, 0.01);
            --shadow-hover: 0 24px 48px -12px rgba(0, 0, 0, 0.12);
            --transition: all 0.25s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        body {
            background: var(--bg);
            color: var(--primary);
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            line-height: 1.5;
            scroll-behavior: smooth;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* Glassmorphic header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(59, 130, 246, 0.08);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 14px 0;
        }

        .brand {
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 700;
            font-size: 1.8rem;
            letter-spacing: -0.02em;
            background: linear-gradient(130deg, var(--primary) 20%, var(--accent) 80%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .brand .accent-light {
            background: linear-gradient(135deg, var(--accent), #06b6d4);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        nav.main-nav ul {
            display: flex;
            gap: 12px;
            list-style: none;
        }

        nav.main-nav ul li a {
            padding: 8px 18px;
            border-radius: 40px;
            font-weight: 500;
            font-size: 0.9rem;
            transition: var(--transition);
            color: var(--primary-soft);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        nav.main-nav ul li a:hover {
            background: rgba(59, 130, 246, 0.08);
            color: var(--accent);
        }

        .search-wrapper {
            display: flex;
            align-items: center;
            background: var(--surface);
            border-radius: 60px;
            padding: 6px 18px;
            gap: 10px;
            border: 1px solid var(--border);
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
        }

        .search-wrapper:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.2);
            background: white;
        }

        .search-wrapper input {
            border: none;
            background: transparent;
            outline: none;
            font-size: 0.85rem;
            width: 200px;
        }

        .icon-btn {
            background: transparent;
            border: none;
            font-size: 1.2rem;
            cursor: pointer;
            color: var(--primary-soft);
            transition: var(--transition);
            width: 42px;
            height: 42px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 60px;
        }

        .icon-btn:hover {
            background: rgba(59, 130, 246, 0.08);
            color: var(--accent);
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: var(--accent);
            color: white;
            font-weight: 700;
            font-size: 10px;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 0 0 2px white;
        }

        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 1.5rem;
        }

        /* Hero section — fresh design */
        .hero {
            background: linear-gradient(105deg, #f8fafc 0%, #eff6ff 100%);
            border-radius: 0 0 48px 48px;
            padding: 70px 0 60px;
            margin-bottom: 16px;
        }

        .hero-content {
            max-width: 700px;
        }

        .hero-badge {
            background: rgba(59, 130, 246, 0.12);
            display: inline-block;
            padding: 6px 14px;
            border-radius: 60px;
            font-size: 0.8rem;
            font-weight: 600;
            color: var(--accent-dark);
            margin-bottom: 20px;
        }

        .hero h1 {
            font-size: 3.5rem;
            font-weight: 800;
            letter-spacing: -0.03em;
            line-height: 1.2;
            font-family: 'Space Grotesk', sans-serif;
        }

        .btn-primary {
            background: var(--primary);
            color: white;
            padding: 12px 28px;
            border-radius: 40px;
            border: none;
            font-weight: 600;
            transition: var(--transition);
            display: inline-flex;
            align-items: center;
            gap: 10px;
            cursor: pointer;
        }

        .btn-primary:hover {
            background: var(--accent-dark);
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(59, 130, 246, 0.3);
        }

        .btn-outline {
            background: transparent;
            border: 1.5px solid var(--border);
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            transition: var(--transition);
            cursor: pointer;
        }

        .section-title {
            font-size: 2rem;
            font-weight: 700;
            margin-bottom: 12px;
            font-family: 'Space Grotesk', sans-serif;
        }

        .section-sub {
            color: var(--muted);
            margin-bottom: 40px;
        }

        /* category cards */
        .grid-categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
            gap: 24px;
        }

        .cat-card-modern {
            background: var(--card-bg);
            border-radius: var(--radius);
            padding: 28px 16px;
            text-align: center;
            border: 1px solid var(--border);
            transition: var(--transition);
            cursor: pointer;
            box-shadow: var(--shadow-sm);
        }

        .cat-card-modern:hover {
            transform: translateY(-8px);
            border-color: var(--accent);
            box-shadow: var(--shadow-hover);
        }

        .cat-icon {
            font-size: 2.4rem;
            color: var(--accent);
            margin-bottom: 16px;
        }

        /* product grid */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 28px;
        }

        .product-card {
            background: white;
            border-radius: var(--radius);
            overflow: hidden;
            transition: var(--transition);
            border: 1px solid var(--border);
            box-shadow: var(--shadow-sm);
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
        }

        .product-img {
            width: 100%;
            height: 240px;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .product-card:hover .product-img {
            transform: scale(1.02);
        }

        .product-info {
            padding: 18px;
        }

        .price-modern {
            font-weight: 800;
            font-size: 1.3rem;
            color: var(--primary);
        }

        .old-price-modern {
            font-size: 0.85rem;
            color: var(--muted-light);
            text-decoration: line-through;
            margin-left: 8px;
        }

        .rating-stars {
            color: #fbbf24;
            font-size: 0.8rem;
        }

        .add-to-cart-btn {
            width: 100%;
            background: var(--primary);
            color: white;
            border: none;
            padding: 12px;
            border-radius: 60px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            margin-top: 12px;
        }

        /* deal spotlight */
        .deal-spotlight {
            background: linear-gradient(125deg, #0f172a 0%, #1e293b 100%);
            border-radius: 32px;
            overflow: hidden;
            display: flex;
            flex-wrap: wrap;
            box-shadow: var(--shadow-md);
        }

        .deal-img-area {
            flex: 1.2;
            min-height: 340px;
            background: url('https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=1200&q=80') center/cover no-repeat;
        }

        .deal-content {
            flex: 1;
            padding: 40px;
            color: white;
        }

        .timer-modern {
            display: flex;
            gap: 16px;
            margin: 28px 0;
        }

        .time-cell {
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(8px);
            padding: 12px 18px;
            border-radius: 20px;
            text-align: center;
            font-weight: 700;
            min-width: 70px;
        }

        .testimonial-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 12px 4px 20px;
        }

        .testimonial-item {
            min-width: 320px;
            background: white;
            border-radius: 24px;
            padding: 24px;
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border);
        }

        .newsletter-modern {
            background: linear-gradient(105deg, #eff6ff, #ffffff);
            border-radius: 32px;
            padding: 48px 32px;
            text-align: center;
            border: 1px solid var(--border);
        }

        footer {
            background: var(--surface);
            margin-top: 48px;
            padding: 48px 0 32px;
            border-top: 1px solid var(--border);
        }

        @media (max-width: 860px) {
            nav.main-nav {
                display: none;
            }

            .mobile-toggle {
                display: block;
            }

            .hero h1 {
                font-size: 2.3rem;
            }

            .product-grid {
                grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
            }
        }

        @media (max-width: 640px) {
            .search-wrapper input {
                width: 140px;
            }
            .deal-content {
                padding: 28px;
            }
        }

        .toast-msg {
            position: fixed;
            bottom: 24px;
            right: 24px;
            background: var(--primary);
            color: white;
            padding: 12px 24px;
            border-radius: 60px;
            font-size: 0.85rem;
            z-index: 200;
            opacity: 0;
            transition: opacity 0.2s;
            pointer-events: none;
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 20px;">
            <button class="mobile-toggle" id="mobileToggleBtn"><i class="fas fa-bars"></i></button>
            <a class="brand" href="#">Horizon<span class="accent-light">.</span></a>
        </div>
        <nav class="main-nav">
            <ul>
                <li><a href="#"><i class="fas fa-compass"></i> Explore</a></li>
                <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
                <li><a href="#trending"><i class="fas fa-chart-line"></i> Trending</a></li>
                <li><a href="#dealSection"><i class="fas fa-bolt"></i> Flash Sale</a></li>
            </ul>
        </nav>
        <div style="display: flex; align-items: center; gap: 12px;">
            <div class="search-wrapper">
                <i class="fas fa-search" style="color: var(--muted);"></i>
                <input type="text" id="searchInputGlobal" placeholder="Search products...">
            </div>
            <button class="icon-btn cart" id="cartBtnIcon">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count" id="cartQuantity">0</span>
            </button>
        </div>
    </div>
    <div id="mobileMenuPanel" style="display: none; background: white; border-top: 1px solid #eef2f6; padding: 18px 28px;">
        <ul style="list-style: none; display: flex; flex-direction: column; gap: 14px;">
            <li><a href="#">Home</a></li>
            <li><a href="#categories">Categories</a></li>
            <li><a href="#trending">Trending</a></li>
            <li><a href="#dealSection">Deals</a></li>
        </ul>
    </div>
</header>

<main>
    <section class="hero">
        <div class="container">
            <div class="hero-content">
                <span class="hero-badge"><i class="fas fa-zap"></i> Summer exclusive</span>
                <h1>Style meets<br>innovation.</h1>
                <p style="font-size: 1.1rem; margin: 20px 0 32px; color: var(--muted); max-width: 560px;">Unlock premium electronics, fashion & accessories. Free shipping on orders $50+.</p>
                <div style="display: flex; gap: 16px; flex-wrap: wrap;">
                    <button class="btn-primary" id="shopNowHero"><i class="fas fa-arrow-right"></i> Shop now</button>
                    <button class="btn-outline" id="dealsHeroBtn"><i class="fas fa-gift"></i> Flash deals</button>
                </div>
            </div>
        </div>
    </section>

    <section id="categories" class="container" style="margin-top: 40px;">
        <div class="section-title">Curated collections</div>
        <div class="section-sub">Explore by category — discover your vibe</div>
        <div class="grid-categories" id="categoryContainer"></div>
    </section>

    <section id="trending" class="container" style="margin-top: 70px;">
        <div class="section-title">Trending now 🔥</div>
        <div class="section-sub">Most loved picks this week</div>
        <div class="product-grid" id="productsContainer"></div>
    </section>

    <section id="dealSection" class="container" style="margin-top: 70px;">
        <div class="section-title">Limited drop</div>
        <div class="deal-spotlight">
            <div class="deal-img-area"></div>
            <div class="deal-content">
                <h2 style="font-size: 2rem; font-weight: 700;">MacBook Air M2</h2>
                <p style="opacity: 0.8; margin-top: 10px;">Next-gen performance. Ultraportable. Midnight finish.</p>
                <div class="timer-modern" id="timerWidget">
                    <div class="time-cell"><span id="dealDays">0</span><br><span style="font-size: 12px;">Days</span></div>
                    <div class="time-cell"><span id="dealHours">00</span><br><span style="font-size: 12px;">Hrs</span></div>
                    <div class="time-cell"><span id="dealMinutes">00</span><br><span style="font-size: 12px;">Mins</span></div>
                    <div class="time-cell"><span id="dealSeconds">00</span><br><span style="font-size: 12px;">Sec</span></div>
                </div>
                <div style="display: flex; align-items: baseline; gap: 16px; flex-wrap: wrap;">
                    <span class="price-modern" style="font-size: 2rem; color: white;">$999</span>
                    <span style="text-decoration: line-through; opacity: 0.6;">$1,299</span>
                    <span style="background: var(--danger); padding: 5px 12px; border-radius: 40px; font-size: 0.8rem;">-23%</span>
                </div>
                <button class="btn-primary" id="flashDealBuyBtn" style="background: white; color: var(--primary); margin-top: 24px;"><i class="fas fa-bolt"></i> Grab deal</button>
            </div>
        </div>
    </section>

    <section class="container" style="margin: 70px auto;">
        <div class="section-title">Trusted by creators</div>
        <div class="testimonial-scroll" id="testimonialsList">
            <div class="testimonial-item"><i class="fas fa-star" style="color: #fbbf24;"></i><i class="fas fa-star" style="color: #fbbf24;"></i><i class="fas fa-star" style="color: #fbbf24;"></i><i class="fas fa-star" style="color: #fbbf24;"></i><i class="fas fa-star" style="color: #fbbf24;"></i><p style="margin: 12px 0;">“Fast delivery & product quality beyond expectation.”</p><strong>— Olivia Chen</strong></div>
            <div class="testimonial-item"><i class="fas fa-star" style="color: #fbbf24;"></i><i class="fas fa-star" style="color: #fbbf24;"></i><i class="fas fa-star" style="color: #fbbf24;"></i><i class="fas fa-star" style="color: #fbbf24;"></i><i class="far fa-star" style="color: #fbbf24;"></i><p style="margin: 12px 0;">“Sleek UI and super smooth checkout. Love the apple watch!”</p><strong>— Marcus T.</strong></div>
            <div class="testimonial-item"><i class="fas fa-star" style="color: #fbbf24;"></i><i class="fas fa-star" style="color: #fbbf24;"></i><i class="fas fa-star" style="color: #fbbf24;"></i><i class="fas fa-star" style="color: #fbbf24;"></i><i class="fas fa-star" style="color: #fbbf24;"></i><p style="margin: 12px 0;">“Best e-commerce experience — smooth animations and great deals.”</p><strong>— Sophia K.</strong></div>
        </div>
    </section>

    <section class="container" style="margin-bottom: 60px;">
        <div class="newsletter-modern">
            <i class="fas fa-envelope-open-text" style="font-size: 2.2rem; color: var(--accent);"></i>
            <h3 style="margin-top: 16px;">Insider access</h3>
            <p>Get early drops and exclusive promos.</p>
            <form id="newsletterModernForm" style="display: flex; gap: 12px; justify-content: center; flex-wrap: wrap; margin-top: 24px;">
                <input type="email" id="newsEmail" placeholder="Your email address" style="padding: 12px 18px; border-radius: 60px; border: 1px solid var(--border); width: 280px;">
                <button type="submit" class="btn-primary" style="background: var(--primary);">Subscribe →</button>
            </form>
            <div id="newsMsg" style="margin-top: 14px; font-size: 0.8rem;"></div>
        </div>
    </section>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 32px;">
        <div><span style="font-weight: 800; font-size: 1.3rem;">Horizon</span><p style="color: var(--muted); margin-top: 12px;">Next‑gen e‑commerce <br>for modern lifestyles.</p></div>
        <div><strong>Company</strong><br><span class="muted">About<br>Careers<br>Press</span></div>
        <div><strong>Help</strong><br><span class="muted">Support<br>Returns<br>Contact</span></div>
    </div>
    <div class="container" style="text-align: center; margin-top: 40px; color: var(--muted); font-size: 0.8rem;">© 2025 Horizon — Elevate your shopping.</div>
</footer>
<div id="toastMsg" class="toast-msg">✨ Added to cart</div>

<script>
    // CATALOG DATA
    const categories = [
        { id: 'tech', name: 'Tech', icon: 'fa-microchip' },
        { id: 'audio', name: 'Audio', icon: 'fa-headphones' },
        { id: 'wearables', name: 'Wearables', icon: 'fa-clock' },
        { id: 'fashion', name: 'Fashion', icon: 'fa-shirt' },
        { id: 'accessory', name: 'Accessories', icon: 'fa-gem' },
        { id: 'gaming', name: 'Gaming', icon: 'fa-gamepad' }
    ];

    const products = [
        { id: 101, title: 'iPhone 15 Pro', price: 1099, oldPrice: 1199, rating: 5, reviews: 342, img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category: 'tech' },
        { id: 102, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 821, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'audio' },
        { id: 103, title: 'Apple Watch Ultra 2', price: 749, oldPrice: 799, rating: 4.9, reviews: 214, img: 'https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=600&q=80', category: 'wearables' },
        { id: 104, title: 'Oversized Denim Jacket', price: 129, rating: 4.7, reviews: 98, img: 'https://images.unsplash.com/photo-1551537482-f2075a1d41f2?auto=format&fit=crop&w=600&q=80', category: 'fashion' },
        { id: 105, title: 'Minimalist Backpack', price: 89, oldPrice: 119, rating: 4.8, reviews: 156, img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', category: 'accessory' },
        { id: 106, title: 'PS5 DualSense Edge', price: 199, rating: 4.9, reviews: 273, img: 'https://images.unsplash.com/photo-1606144042614-b2417e99c4e3?auto=format&fit=crop&w=600&q=80', category: 'gaming' }
    ];

    let cartItemCount = 0;
    const cartCountSpan = document.getElementById('cartQuantity');
    const productsContainer = document.getElementById('productsContainer');
    const categoryContainer = document.getElementById('categoryContainer');
    const searchInput = document.getElementById('searchInputGlobal');

    function showToast(msg) {
        const toast = document.getElementById('toastMsg');
        toast.textContent = msg || '✓ Added to cart';
        toast.style.opacity = '1';
        setTimeout(() => toast.style.opacity = '0', 1800);
    }

    function updateCartUI() {
        cartCountSpan.innerText = cartItemCount;
    }

    function addToCart(productId) {
        cartItemCount++;
        updateCartUI();
        showToast('✨ Item added · ' + (products.find(p => p.id === productId)?.title || 'product'));
    }

    function renderProducts(filterQuery = '') {
        const q = filterQuery.toLowerCase().trim();
        let filtered = products;
        if (q) {
            filtered = products.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
        }
        productsContainer.innerHTML = '';
        filtered.forEach(p => {
            const card = document.createElement('div');
            card.className = 'product-card';
            card.innerHTML = `
                <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-info">
                    <h4 style="margin-bottom: 6px;">${p.title}</h4>
                    <div class="rating-stars">${'★'.repeat(Math.floor(p.rating))}${p.rating % 1 !== 0 ? '½' : ''} <span style="color:var(--muted);">(${p.reviews})</span></div>
                    <div style="margin: 10px 0 8px;">
                        <span class="price-modern">$${p.price.toLocaleString()}</span>
                        ${p.oldPrice ? `<span class="old-price-modern">$${p.oldPrice.toLocaleString()}</span>` : ''}
                    </div>
                    <button class="add-to-cart-btn" data-id="${p.id}"><i class="fas fa-shopping-cart"></i> Add to bag</button>
                </div>
            `;
            productsContainer.appendChild(card);
        });
        document.querySelectorAll('.add-to-cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                addToCart(id);
            });
        });
    }

    function renderCategories() {
        categoryContainer.innerHTML = '';
        categories.forEach(cat => {
            const catDiv = document.createElement('div');
            catDiv.className = 'cat-card-modern';
            catDiv.innerHTML = `<div class="cat-icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><p class="muted" style="font-size:12px;">shop now</p>`;
            catDiv.addEventListener('click', () => {
                searchInput.value = cat.name;
                renderProducts(cat.name);
                document.getElementById('trending').scrollIntoView({ behavior: 'smooth', block: 'start' });
            });
            categoryContainer.appendChild(catDiv);
        });
    }

    // timer setup
    function initDealTimer() {
        const targetDate = new Date();
        targetDate.setDate(targetDate.getDate() + 1);
        targetDate.setHours(19, 45, 0, 0);
        if (targetDate < new Date()) targetDate.setDate(targetDate.getDate() + 1);
        function updateTimer() {
            const diff = targetDate - new Date();
            if (diff <= 0) {
                document.getElementById('dealDays').innerText = '0'; document.getElementById('dealHours').innerText = '00';
                document.getElementById('dealMinutes').innerText = '00'; document.getElementById('dealSeconds').innerText = '00';
                return;
            }
            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = String(hours).padStart(2, '0');
            document.getElementById('dealMinutes').innerText = String(mins).padStart(2, '0');
            document.getElementById('dealSeconds').innerText = String(secs).padStart(2, '0');
        }
        updateTimer();
        setInterval(updateTimer, 1000);
    }

    // Event listeners
    document.getElementById('mobileToggleBtn').addEventListener('click', () => {
        const panel = document.getElementById('mobileMenuPanel');
        panel.style.display = panel.style.display === 'none' ? 'block' : 'none';
    });
    document.getElementById('shopNowHero').addEventListener('click', () => document.getElementById('trending').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('dealsHeroBtn').addEventListener('click', () => document.getElementById('dealSection').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('flashDealBuyBtn').addEventListener('click', () => { cartItemCount++; updateCartUI(); showToast('🔥 MacBook Air added to cart!'); });
    document.getElementById('cartBtnIcon').addEventListener('click', () => alert(`🛒 Your cart has ${cartItemCount} item(s). (Demo checkout)`));
    searchInput.addEventListener('input', (e) => renderProducts(e.target.value));
    document.getElementById('newsletterModernForm').addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value.trim();
        const msgDiv = document.getElementById('newsMsg');
        if (!email.includes('@')) { msgDiv.innerText = 'Valid email required'; msgDiv.style.color = '#ef4444'; return; }
        msgDiv.innerText = '🎉 Subscribed! Thank you.'; msgDiv.style.color = '#10b981';
        document.getElementById('newsEmail').value = '';
        setTimeout(() => msgDiv.innerText = '', 2500);
    });

    renderCategories();
    renderProducts();
    initDealTimer();
    updateCartUI();
</script>
</body>
</html>
