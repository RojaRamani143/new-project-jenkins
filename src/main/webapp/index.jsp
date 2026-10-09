
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NEXUS ORBIT — Future of Shopping</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
:root {
  --bg:#080914;
  --panel:#111326;
  --panel2:#171a32;
  --purple:#9b7bff;
  --cyan:#54e8ff;
  --pink:#ff6bc6;
  --text:#f5f5ff;
  --muted:#9093b2;
  --line:rgba(255,255,255,.09);
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{
  background:var(--bg);color:var(--text);
  font-family:Inter,Arial,sans-serif;
  overflow-x:hidden;
}
button,input{font:inherit}
button,a{-webkit-tap-highlight-color:transparent}
a{color:inherit;text-decoration:none}
button{cursor:pointer}
body:before{
  content:"";position:fixed;inset:0;pointer-events:none;z-index:-1;
  background:
  radial-gradient(ellipse at 12% 12%,rgba(111,73,255,.16),transparent 35%),
  radial-gradient(ellipse at 90% 40%,rgba(36,200,255,.10),transparent 35%);
}
.promo{
  text-align:center;background:linear-gradient(90deg,#7957ff,#b46bff,#43dfff);
  color:#080914;padding:10px;font-size:10px;
  letter-spacing:1.8px;font-weight:800;text-transform:uppercase;
}
header{
  height:82px;padding:0 6%;display:flex;align-items:center;
  justify-content:space-between;border-bottom:1px solid var(--line);
  background:rgba(8,9,20,.86);backdrop-filter:blur(16px);
  position:sticky;top:0;z-index:10;gap:20px;
}
.logo{font-size:25px;font-weight:900;letter-spacing:-1.5px}
.logo span{color:var(--cyan)}
.nav{display:flex;gap:30px;font-size:12px;color:#c3c5dc}
.nav a:hover{color:var(--cyan)}
.header-right{display:flex;align-items:center;gap:13px}
.search-button,.cart-button,.menu-button{
  width:40px;height:40px;border:1px solid var(--line);
  border-radius:13px;background:var(--panel);color:white;
}
.cart-button{position:relative}
.cart-count{
  position:absolute;right:-5px;top:-5px;width:17px;height:17px;
  display:grid;place-items:center;border-radius:50%;
  background:var(--cyan);color:#080914;font-size:10px;font-weight:900;
}
.menu-button{display:none}
.search-panel{padding:14px 6%;border-bottom:1px solid var(--line)}
.search-panel input{
  width:100%;padding:14px 17px;background:var(--panel);
  border:1px solid var(--line);border-radius:12px;color:white;outline:none;
}
.container{width:88%;max-width:1300px;margin:auto}
.hero{
  padding:66px 0 55px;display:grid;grid-template-columns:1.08fr .92fr;
  align-items:center;gap:40px;min-height:520px;
}
.pill{
  display:inline-flex;align-items:center;gap:8px;padding:9px 13px;
  border:1px solid rgba(84,232,255,.3);border-radius:30px;
  color:var(--cyan);font-size:10px;font-weight:700;letter-spacing:1px;
  background:rgba(84,232,255,.06);
}
.pill i{font-size:12px}
.hero h1{
  font-size:clamp(45px,6vw,78px);line-height:1.02;
  letter-spacing:-5px;font-weight:900;margin:25px 0 18px;
}
.gradient-text{
  background:linear-gradient(90deg,#a98aff,#56eaff);
  color:transparent;background-clip:text;
}
.hero p{color:var(--muted);font-size:14px;line-height:1.9;max-width:470px}
.hero-buttons{display:flex;gap:12px;margin-top:29px;flex-wrap:wrap}
.btn{
  padding:14px 20px;border-radius:12px;border:1px solid transparent;
  font-size:12px;font-weight:800;display:inline-flex;
  align-items:center;gap:12px;transition:.25s;
}
.btn-primary{
  background:linear-gradient(100deg,#8c68ff,#4adfff);color:#080914;
  box-shadow:0 0 24px rgba(116,107,255,.18);
}
.btn-primary:hover{transform:translateY(-3px);box-shadow:0 0 30px #7865ff55}
.btn-outline{background:transparent;border-color:var(--line);color:white}
.btn-outline:hover{border-color:var(--cyan);color:var(--cyan)}
.hero-note{display:flex;gap:18px;margin-top:30px;flex-wrap:wrap}
.hero-note span{font-size:10px;color:#b9bad0}
.hero-note i{color:var(--cyan);margin-right:5px}
.hero-visual{position:relative;min-height:420px;display:grid;place-items:center}
.orbit{
  width:min(100%,430px);aspect-ratio:1;border-radius:50%;
  position:absolute;border:1px solid rgba(139,115,255,.28);
  transform:rotate(-22deg);
}
.orbit:before,.orbit:after{
  content:"";position:absolute;inset:8%;border:1px solid rgba(84,232,255,.20);
  border-radius:50%;transform:rotate(60deg);
}
.orbit:after{inset:18%;border-color:rgba(255,107,198,.18);transform:rotate(-55deg)}
.orbit-dot{
  width:12px;height:12px;background:var(--cyan);border-radius:50%;
  box-shadow:0 0 20px var(--cyan);position:absolute;top:15%;left:13%;
}
.hero-product{
  width:76%;max-width:330px;aspect-ratio:.82;z-index:1;
  border:1px solid rgba(255,255,255,.18);border-radius:28px;
  background:linear-gradient(145deg,#29234e,#12182c 65%,#172e42);
  box-shadow:0 25px 80px #0008,0 0 55px #7c68ff22;
  padding:20px;position:relative;overflow:hidden;
}
.hero-product img{
  width:100%;height:75%;object-fit:contain;position:relative;z-index:1;
  filter:drop-shadow(0 20px 25px #0008);
}
.hero-product .label{font-size:10px;color:var(--cyan);letter-spacing:2px}
.hero-product h3{font-size:21px;margin-top:8px}
.hero-product .price{margin-top:5px;color:#d0d0e8;font-size:12px}
.floating-card{
  position:absolute;z-index:2;padding:13px 16px;
  border:1px solid #ffffff20;border-radius:14px;
  background:#17192de8;backdrop-filter:blur(12px);
  box-shadow:0 10px 30px #0005;
}
.floating-card strong{display:block;font-size:15px}
.floating-card small{color:var(--muted);font-size:10px}
.float-one{top:15%;right:0}
.float-two{bottom:13%;left:0}
.float-one strong{color:var(--cyan)}
.float-two strong{color:var(--pink)}
.metrics{
  border:1px solid var(--line);border-radius:20px;background:#ffffff03;
  padding:23px 28px;display:grid;grid-template-columns:repeat(4,1fr);
  gap:15px;margin:5px 0 25px;
}
.metric{border-right:1px solid var(--line);padding-left:18px}
.metric:first-child{padding-left:0}
.metric:last-child{border:0}
.metric strong{font-size:22px;letter-spacing:-1px}
.metric span{display:block;font-size:10px;color:var(--muted);margin-top:6px}
.section{padding:75px 0}
.section-header{
  display:flex;justify-content:space-between;align-items:end;
  gap:20px;margin-bottom:28px;
}
.eyebrow{font-size:10px;color:var(--cyan);font-weight:800;letter-spacing:2px;text-transform:uppercase}
.section-header h2{font-size:clamp(27px,4vw,40px);letter-spacing:-2px;margin-top:9px}
.section-header p{font-size:12px;color:var(--muted);margin-top:8px}
.view-link{font-size:11px;font-weight:700;color:var(--cyan);white-space:nowrap}
.filters{display:flex;gap:9px;flex-wrap:wrap;margin-bottom:25px}
.filter{
  padding:10px 16px;background:var(--panel);color:#bfc1d7;
  border:1px solid var(--line);border-radius:30px;font-size:11px;
}
.filter.active,.filter:hover{
  color:var(--bg);background:var(--cyan);border-color:var(--cyan);
}
.product-grid{display:grid;grid-template-columns:repeat(4,minmax(0,1fr));gap:17px}
.product-card{
  background:linear-gradient(145deg,#15172b,#10111f);
  border:1px solid var(--line);border-radius:19px;overflow:hidden;
  transition:transform .25s,border-color .25s;
}
.product-card:hover{transform:translateY(-5px);border-color:#8172ff88}
.product-image{
  position:relative;aspect-ratio:1/1.03;padding:18px;
  background:radial-gradient(ellipse at 50% 40%,#303153,#16182b 68%);
  overflow:hidden;
}
.product-image img{
  width:100%;height:100%;object-fit:contain;mix-blend-mode:screen;
  transition:transform .35s;
}
.product-card:hover .product-image img{transform:scale(1.07)}
.product-tag{
  position:absolute;top:12px;left:12px;padding:6px 9px;
  background:#8c72ff;color:white;border-radius:6px;font-size:8px;
  letter-spacing:.8px;font-weight:800;
}
.wish{
  position:absolute;top:10px;right:10px;width:32px;height:32px;
  border-radius:10px;border:1px solid var(--line);
  color:white;background:#080914a8;
}
.wish.liked{color:var(--pink);border-color:var(--pink)}
.product-info{padding:16px}
.product-category{font-size:9px;letter-spacing:1.5px;color:var(--cyan);text-transform:uppercase}
.product-info h3{font-size:13px;margin:8px 0 7px}
.rating{font-size:10px;color:#ffc969}
.rating span{color:var(--muted);margin-left:4px}
.product-bottom{display:flex;align-items:center;justify-content:space-between;gap:8px;margin-top:15px}
.product-price{font-size:16px;font-weight:800}
.product-price small{font-size:10px;color:var(--muted);text-decoration:line-through;margin-left:5px;font-weight:400}
.add-btn{
  width:36px;height:36px;border:0;border-radius:11px;
  color:#090a17;background:linear-gradient(130deg,var(--purple),var(--cyan));
}
.add-btn:hover{box-shadow:0 0 20px #55e8ff44}
.no-results{grid-column:1/-1;text-align:center;padding:50px;color:var(--muted)}
.promo-feature{
  display:grid;grid-template-columns:1fr 1fr;gap:25px;align-items:center;
  border:1px solid var(--line);border-radius:25px;overflow:hidden;
  background:linear-gradient(110deg,#17142c,#111b2c);margin-top:30px;
}
.feature-copy{padding:45px}
.feature-copy h2{font-size:clamp(30px,4vw,46px);letter-spacing:-2px;line-height:1.08;margin:17px 0}
.feature-copy p{font-size:12px;color:var(--muted);line-height:1.9;max-width:400px}
.feature-copy .btn{margin-top:24px}
.feature-image{height:350px;overflow:hidden}
.feature-image img{width:100%;height:100%;object-fit:cover;opacity:.85}
.perks{display:grid;grid-template-columns:repeat(3,1fr);gap:16px}
.perk{
  padding:26px;border:1px solid var(--line);border-radius:17px;background:#ffffff03;
}
.perk-icon{
  width:43px;height:43px;display:grid;place-items:center;border-radius:13px;
  color:var(--cyan);background:#54e8ff12;font-size:18px;margin-bottom:18px;
}
.perk h3{font-size:14px;margin-bottom:9px}
.perk p{font-size:11px;color:var(--muted);line-height:1.8}
.newsletter{
  padding:35px;border:1px solid #8271ff55;border-radius:22px;
  background:linear-gradient(115deg,#1b1739,#111b2b);
  display:flex;justify-content:space-between;align-items:center;gap:25px;
}
.newsletter h2{font-size:27px;letter-spacing:-1px}
.newsletter p{font-size:11px;color:var(--muted);margin-top:8px}
.news-form{display:flex;gap:8px;width:45%;max-width:430px}
.news-form input{
  min-width:0;flex:1;background:#080914;border:1px solid var(--line);
  padding:13px;border-radius:10px;color:white;outline:none;font-size:11px;
}
.news-form button{
  padding:0 17px;border:0;border-radius:10px;
  background:linear-gradient(100deg,var(--purple),var(--cyan));
  font-size:10px;font-weight:900;white-space:nowrap;
}
#newsletterMessage{font-size:11px;color:var(--cyan);margin-top:8px}
footer{padding:55px 0 25px;border-top:1px solid var(--line);margin-top:70px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:30px;padding-bottom:35px}
.footer-brand p{font-size:11px;color:var(--muted);line-height:1.9;max-width:270px;margin-top:15px}
.footer-col h4{font-size:10px;letter-spacing:1.5px;color:var(--cyan);margin-bottom:18px}
.footer-col a{display:block;color:var(--muted);font-size:11px;margin:13px 0}
.footer-col a:hover{color:white}
.footer-bottom{
  display:flex;justify-content:space-between;gap:15px;border-top:1px solid var(--line);
  padding-top:20px;font-size:9px;letter-spacing:1px;color:#777b99;
}
.toast{
  position:fixed;right:20px;bottom:20px;z-index:20;
  padding:15px 20px;border:1px solid #54e8ff55;border-radius:13px;
  background:#141a2c;color:var(--cyan);font-size:12px;font-weight:700;
  box-shadow:0 0 25px #54e8ff22;transform:translateY(100px);opacity:0;transition:.25s;
}
.toast.show{transform:translateY(0);opacity:1}
@media(max-width:1000px){
  .container{width:90%}.nav{gap:16px}
  .hero{gap:20px}.product-grid{grid-template-columns:repeat(2,minmax(0,1fr))}
  .footer-grid{grid-template-columns:1fr 1fr}
}
@media(max-width:650px){
  header{height:70px;padding:0 5%}.nav{display:none}.menu-button{display:block}
  .container{width:90%}.hero{grid-template-columns:1fr;padding-top:45px}
  .hero h1{letter-spacing:-3px;font-size:55px}
  .hero-visual{min-height:360px}.hero-product{max-width:275px}
  .metrics{grid-template-columns:repeat(2,1fr);padding:20px}
  .metric{border-right:0;padding:8px 0}
  .section{padding:52px 0}.section-header h2{font-size:30px}
  .product-grid{gap:11px}.product-info{padding:12px}
  .product-info h3{font-size:12px}.product-price{font-size:14px}
  .product-image{padding:10px}
  .promo-feature{grid-template-columns:1fr}
  .feature-copy{padding:28px}.feature-image{height:250px;grid-row:1}
  .perks{grid-template-columns:1fr}
  .newsletter{flex-direction:column;align-items:flex-start;padding:25px}
  .news-form{width:100%}.footer-grid{grid-template-columns:1fr 1fr;gap:25px}
  .footer-brand{grid-column:1/-1}
  .footer-bottom{flex-direction:column}
}
@media(max-width:370px){
  .hero h1{font-size:46px}
  .product-bottom{align-items:flex-end}
  .product-price small{display:block;margin:5px 0 0}
  .news-form{flex-direction:column}
  .news-form input,.news-form button{min-height:43px}
}
</style>
</head>

<body>
<div class="promo">✦ NEXT-GEN FINDS · FREE SHIPPING ON ORDERS OVER $100 ✦</div>

<header>
  <a href="#" class="logo">NEXUS<span>/</span>ORBIT</a>
  <nav class="nav">
    <a href="#home">Home</a>
    <a href="#products">Discover</a>
    <a href="#featured">Featured</a>
    <a href="#benefits">Why Nexus</a>
  </nav>
  <div class="header-right">
    <button class="search-button" id="searchToggle" aria-label="Search"><i class="fa-solid fa-magnifying-glass"></i></button>
    <button class="cart-button" id="cartButton" aria-label="Shopping cart">
      <i class="fa-solid fa-bag-shopping"></i><span class="cart-count" id="cartCount">0</span>
    </button>
    <button class="menu-button" id="menuToggle" aria-label="Menu"><i class="fa-solid fa-bars"></i></button>
  </div>
</header>

<div class="search-panel" id="searchPanel" style="display:none">
  <input id="searchInput" type="search" placeholder="Search futuristic gear, audio, accessories...">
</div>
<div id="mobileNav" style="display:none;padding:18px 5%;border-bottom:1px solid var(--line)">
  <a href="#home">Home</a> &nbsp; · &nbsp;
  <a href="#products">Discover</a> &nbsp; · &nbsp;
  <a href="#featured">Featured</a> &nbsp; · &nbsp;
  <a href="#benefits">Why Nexus</a>
</div>

<main class="container">
<section class="hero" id="home">
  <div>
    <div class="pill"><i class="fa-solid fa-wand-magic-sparkles"></i> THE FUTURE LOOKS GOOD</div>
    <h1>Upgrade your<br>everyday.<br><span class="gradient-text">Enter orbit.</span></h1>
    <p>Discover next-level tech, futuristic accessories and statement essentials. Your next favourite thing is closer than you think.</p>
    <div class="hero-buttons">
      <a class="btn btn-primary" href="#products">EXPLORE THE DROP <i class="fa-solid fa-arrow-right"></i></a>
      <a class="btn btn-outline" href="#featured">WHAT'S NEW</a>
    </div>
    <div class="hero-note">
      <span><i class="fa-solid fa-circle-check"></i> Curated products</span>
      <span><i class="fa-solid fa-bolt"></i> Fresh arrivals</span>
      <span><i class="fa-solid fa-shield-halved"></i> Secure-ready design</span>
    </div>
  </div>

  <div class="hero-visual">
    <div class="orbit"><span class="orbit-dot"></span></div>
    <div class="hero-product">
      <div class="label">ORBIT EXCLUSIVE / 001</div>
      <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85" alt="Premium wireless headphones">
      <h3>Pulse X Headphones</h3>
      <div class="price">$149.00 &nbsp;·&nbsp; Next-level audio</div>
    </div>
    <div class="floating-card float-one"><strong>01 / NEW</strong><small>Just entered orbit</small></div>
    <div class="floating-card float-two"><strong><i class="fa-solid fa-star"></i> 4.9 / 5</strong><small>Community favourite</small></div>
  </div>
</section>

<div class="metrics">
  <div class="metric"><strong>01—26</strong><span>The latest collection</span></div>
  <div class="metric"><strong>4.9/5</strong><span>Demo community rating</span></div>
  <div class="metric"><strong>24/7</strong><span>Explore anytime</span></div>
  <div class="metric"><strong>∞</strong><span>Ideas for your setup</span></div>
</div>

<section class="section" id="products">
  <div class="section-header">
    <div><div class="eyebrow">Your next obsession</div><h2>Trending in orbit<span style="color:var(--cyan)">.</span></h2><p>Distinctive gear for a world that never stands still.</p></div>
    <span class="view-link">THE NEW STANDARD ↗</span>
  </div>
  <div class="filters" id="filters">
    <button class="filter active" data-category="All">All products</button>
    <button class="filter" data-category="Audio">Audio</button>
    <button class="filter" data-category="Tech">Tech</button>
    <button class="filter" data-category="Style">Style</button>
    <button class="filter" data-category="Lifestyle">Lifestyle</button>
  </div>
  <div class="product-grid" id="productGrid"></div>
</section>

<section class="promo-feature" id="featured">
  <div class="feature-copy">
    <div class="eyebrow">The featured drop / 2026</div>
    <h2>Make your setup<br><span class="gradient-text">a statement.</span></h2>
    <p>From desk essentials to pocket-sized technology, find tools that fit your world and make every day feel a little more futuristic.</p>
    <a class="btn btn-primary" href="#products">FIND YOUR NEXT UPGRADE <i class="fa-solid fa-arrow-right"></i></a>
  </div>
  <div class="feature-image">
    <img src="https://images.unsplash.com/photo-1498050108023-c5249f4df085?auto=format&fit=crop&w=1000&q=85" alt="Modern creative technology workspace">
  </div>
</section>

<section class="section" id="benefits">
  <div class="section-header">
    <div><div class="eyebrow">Built around you</div><h2>Shopping, evolved.</h2><p>A smarter experience from discovery to your next favourite find.</p></div>
  </div>
  <div class="perks">
    <div class="perk"><div class="perk-icon"><i class="fa-solid fa-cubes-stacked"></i></div><h3>Curated discoveries</h3><p>Explore a handpicked concept collection with a distinctive futuristic identity.</p></div>
    <div class="perk"><div class="perk-icon"><i class="fa-solid fa-wand-magic-sparkles"></i></div><h3>Made to explore</h3><p>Filter categories and search products to find items without unnecessary clicks.</p></div>
    <div class="perk"><div class="perk-icon"><i class="fa-solid fa-mobile-screen-button"></i></div><h3>Ready for every screen</h3><p>A responsive layout that adapts to desktops, tablets and mobile devices.</p></div>
  </div>
</section>

<section class="newsletter">
  <div><div class="eyebrow">Transmission incoming</div><h2>Stay ahead of the curve.</h2><p>Sign up for new-drop announcements and inspiration.</p></div>
  <div style="flex:1;max-width:450px;width:100%">
    <form class="news-form" id="newsletterForm">
      <input type="email" id="emailInput" placeholder="Enter your email address" required>
      <button type="submit">JOIN ORBIT ↗</button>
    </form>
    <div id="newsletterMessage"></div>
  </div>
</section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="footer-brand">
        <a href="#" class="logo">NEXUS<span>/</span>ORBIT</a>
        <p>A concept store exploring the intersection of technology, design and everyday life. Discover a different side of online shopping.</p>
      </div>
      <div class="footer-col"><h4>DISCOVER</h4><a href="#products">All products</a><a href="#products">Latest drops</a><a href="#featured">Featured collection</a></div>
      <div class="footer-col"><h4>THE STUDIO</h4><a href="#benefits">Our approach</a><a href="#home">Back to top</a><a href="#featured">What's new</a></div>
      <div class="footer-col"><h4>CONNECT</h4><a href="#footer">Instagram ↗</a><a href="#footer">Pinterest ↗</a><a href="#footer">Contact</a></div>
    </div>
    <div class="footer-bottom" id="footer"><span>© 2026 NEXUS / ORBIT — CONCEPT STORE</span><span>DESIGNED BEYOND ORDINARY.</span></div>
  </div>
</footer>

<div class="toast" id="toast"></div>

<script>
const catalog = [
 {id:1,name:"Pulse X Headphones",category:"Audio",price:149,old:189,tag:"BESTSELLER",rating:"4.9",image:"photo-1505740420928-5e560c06d30e"},
 {id:2,name:"Nova Smart Watch",category:"Tech",price:179,old:219,tag:"NEW DROP",rating:"4.8",image:"photo-1523275335684-37898b6baf30"},
 {id:3,name:"Phantom Camera",category:"Tech",price:229,old:null,tag:"LIMITED",rating:"4.9",image:"photo-1516035069371-29a1b244cc32"},
 {id:4,name:"Sonic Mini Speaker",category:"Audio",price:89,old:109,tag:"POPULAR",rating:"4.7",image:"photo-1608043152269-423dbba4e7e1"},
 {id:5,name:"Urban Carry Pack",category:"Style",price:75,old:null,tag:"ESSENTIAL",rating:"4.8",image:"photo-1553062407-98eeb64c6a62"},
 {id:6,name:"Focus Desk Setup",category:"Lifestyle",price:129,old:159,tag:"STAFF PICK",rating:"4.9",image:"photo-1498050108023-c5249f4df085"},
 {id:7,name:"Studio Timepiece",category:"Style",price:119,old:null,tag:"JUST IN",rating:"4.7",image:"photo-1524805444758-089113d48a6d"},
 {id:8,name:"Wireless Sound Pods",category:"Audio",price:99,old:129,tag:"HOT DROP",rating:"4.8",image:"photo-1606220945770-b5b6c2c55bf1"}
];

let selectedCategory = "All";
let searchTerm = "";
let cartItems = 0;
let toastTimeout;

const grid = document.getElementById("productGrid");
const toast = document.getElementById("toast");

function renderProducts(){
 const result = catalog.filter(item =>
  (selectedCategory === "All" || item.category === selectedCategory) &&
  (item.name.toLowerCase().includes(searchTerm) ||
   item.category.toLowerCase().includes(searchTerm))
 );

 if(!result.length){
  grid.innerHTML = '<div class="no-results">No matching products found. Try another search.</div>';
  return;
 }

 grid.innerHTML = result.map(item => `
  <article class="product-card">
   <div class="product-image">
    <img loading="lazy"
      src="https://images.unsplash.com/${item.image}?auto=format&fit=crop&w=650&q=80"
      alt="${item.name}">
    <span class="product-tag">${item.tag}</span>
    <button class="wish" aria-label="Toggle wishlist for ${item.name}" onclick="toggleWishlist(this)">
      <i class="fa-regular fa-heart"></i>
    </button>
   </div>
   <div class="product-info">
    <div class="product-category">${item.category} / ORBIT SERIES</div>
    <h3>${item.name}</h3>
    <div class="rating">★★★★★ <span>${item.rating} / 5</span></div>
    <div class="product-bottom">
     <div class="product-price">$${item.price}${item.old ? `<small>$${item.old}</small>` : ""}</div>
     <button class="add-btn" aria-label="Add ${item.name} to cart" onclick="addToCart('${item.name}')">
      <i class="fa-solid fa-plus"></i>
     </button>
    </div>
   </div>
  </article>
 `).join("");
}

function showToast(message){
 toast.textContent = message;
 toast.classList.add("show");
 clearTimeout(toastTimeout);
 toastTimeout = setTimeout(()=>toast.classList.remove("show"),2300);
}

function addToCart(name){
 cartItems++;
 document.getElementById("cartCount").textContent = cartItems;
 showToast(name + " added to your bag ✓");
}

function toggleWishlist(button){
 button.classList.toggle("liked");
 const liked = button.classList.contains("liked");
 button.innerHTML = liked
   ? '<i class="fa-solid fa-heart"></i>'
   : '<i class="fa-regular fa-heart"></i>';
 showToast(liked ? "Saved to your wishlist ♡" : "Removed from your wishlist");
}

document.querySelectorAll(".filter").forEach(button=>{
 button.addEventListener("click",()=>{
  document.querySelectorAll(".filter").forEach(b=>b.classList.remove("active"));
  button.classList.add("active");
  selectedCategory = button.dataset.category;
  renderProducts();
 });
});

document.getElementById("searchToggle").addEventListener("click",()=>{
 const panel = document.getElementById("searchPanel");
 panel.style.display = panel.style.display === "none" ? "block" : "none";
 if(panel.style.display === "block") document.getElementById("searchInput").focus();
});

document.getElementById("searchInput").addEventListener("input",event=>{
 searchTerm = event.target.value.toLowerCase().trim();
 renderProducts();
});

document.getElementById("cartButton").addEventListener("click",()=>{
 showToast(cartItems ? "Your bag contains " + cartItems + " item(s)." : "Your bag is empty. Explore the collection!");
});

document.getElementById("menuToggle").addEventListener("click",()=>{
 const nav = document.getElementById("mobileNav");
 nav.style.display = nav.style.display === "none" ? "block" : "none";
});

document.getElementById("newsletterForm").addEventListener("submit",event=>{
 event.preventDefault();
 document.getElementById("newsletterMessage").textContent =
   "Transmission received! You're on the list ✓";
 document.getElementById("emailInput").value = "";
});

renderProducts();
</script>
</body>
</html>
