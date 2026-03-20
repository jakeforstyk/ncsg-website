#!/bin/bash

# Function to create a city page
create_page() {
  local CITY="$1"
  local SLUG="$2"
  local IMAGE="$3"
  local CONTENT_P1="$4"
  local CONTENT_P2="$5"
  local H3_1="$6"
  local CONTENT_P3="$7"
  local CONTENT_P4="$8"
  local H3_2="$9"
  local CONTENT_P5="${10}"
  local FAQ1_Q="${11}"
  local FAQ1_A="${12}"
  local FAQ2_Q="${13}"
  local FAQ2_A="${14}"
  local FAQ3_Q="${15}"
  local FAQ3_A="${16}"
  local FAQ4_Q="${17}"
  local FAQ4_A="${18}"
  local NEARBY="${19}"
  local FILE="stump-grinding-${SLUG}.html"

  # Build FAQ schema
  local FAQ_SCHEMA="[
    {\"@type\":\"Question\",\"name\":\"${FAQ1_Q}\",\"acceptedAnswer\":{\"@type\":\"Answer\",\"text\":\"${FAQ1_A}\"}},
    {\"@type\":\"Question\",\"name\":\"${FAQ2_Q}\",\"acceptedAnswer\":{\"@type\":\"Answer\",\"text\":\"${FAQ2_A}\"}},
    {\"@type\":\"Question\",\"name\":\"${FAQ3_Q}\",\"acceptedAnswer\":{\"@type\":\"Answer\",\"text\":\"${FAQ3_A}\"}}
  ]"

  cat > "$FILE" << ENDHTML
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Stump Grinding in ${CITY}, OH | North Coast Stump Grinding</title>
<meta name="description" content="Professional stump grinding in ${CITY}, Ohio. Fast, affordable stump removal for homeowners and tree service companies. Same-week scheduling. Call (440) 429-4524.">
<meta name="keywords" content="stump grinding ${CITY} OH, stump removal ${CITY} Ohio, tree stump grinding ${CITY}, stump grinder ${CITY}">
<link rel="canonical" href="https://northcoaststumpgrinding.com/stump-grinding-${SLUG}">
<meta property="og:type" content="website">
<meta property="og:title" content="Stump Grinding in ${CITY}, OH | North Coast Stump Grinding">
<meta property="og:description" content="Professional stump grinding in ${CITY}, Ohio. Fast, affordable stump removal for homeowners and tree service companies.">
<meta property="og:url" content="https://northcoaststumpgrinding.com/stump-grinding-${SLUG}">
<meta property="og:site_name" content="North Coast Stump Grinding">
<meta property="og:locale" content="en_US">
<meta name="geo.region" content="US-OH">
<meta name="geo.placename" content="${CITY}">
<script type="application/ld+json">
{"@context":"https://schema.org","@type":"LocalBusiness","name":"North Coast Stump Grinding","description":"Professional stump grinding service in ${CITY}, Ohio. Serving homeowners and tree service contractors with fast, affordable stump removal.","url":"https://northcoaststumpgrinding.com/stump-grinding-${SLUG}","telephone":"+1-440-429-4524","email":"northcoaststumps@gmail.com","areaServed":{"@type":"City","name":"${CITY}","addressRegion":"OH"},"address":{"@type":"PostalAddress","addressLocality":"Cleveland","addressRegion":"OH","addressCountry":"US"},"serviceType":"Stump Grinding","priceRange":"$$"}
</script>
<script type="application/ld+json">
{"@context":"https://schema.org","@type":"FAQPage","mainEntity":${FAQ_SCHEMA}}
</script>
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;600;700&family=Open+Sans:wght@300;400;600&display=swap" rel="stylesheet">
<style>
  :root{--navy:#212121;--blue:#1D6BF3;--lightblue:#5aafff;--white:#ffffff;--offwhite:#f0f0f0;--gray:#aaaaaa;--darkgray:#2e2e2e;--border:rgba(91,155,213,0.2)}*{margin:0;padding:0;box-sizing:border-box}html{scroll-behavior:smooth}.skip-link{position:absolute;top:-100%;left:16px;background:var(--blue);color:var(--white);padding:8px 16px;z-index:200;font-family:'Oswald',sans-serif;font-size:14px;text-decoration:none;border-radius:0 0 6px 6px}.skip-link:focus{top:0}*:focus-visible{outline:2px solid var(--lightblue);outline-offset:2px}body{background:var(--navy);color:var(--white);font-family:'Open Sans',sans-serif;line-height:1.6}nav{position:fixed;top:0;left:0;right:0;z-index:100;background:rgba(33,33,33,0.96);border-bottom:1px solid var(--border);padding:0 32px;height:60px;display:flex;align-items:center;justify-content:space-between}.nav-logo{display:flex;align-items:center;gap:12px;text-decoration:none}.nav-wave{height:18px;width:auto}.nav-name{font-family:'Oswald',sans-serif;font-weight:700;font-size:16px;letter-spacing:0.04em;color:var(--white);text-transform:uppercase}.nav-cta{font-family:'Oswald',sans-serif;font-weight:600;font-size:14px;letter-spacing:0.06em;text-transform:uppercase;color:var(--white);background:var(--blue);padding:8px 20px;border-radius:6px;text-decoration:none;transition:background 0.2s}.nav-cta:hover{background:var(--lightblue)}.hero{min-height:60vh;display:flex;flex-direction:column;align-items:center;justify-content:center;text-align:center;padding:100px 24px 80px;position:relative;overflow:hidden;background:linear-gradient(rgba(33,33,33,0.85),rgba(33,33,33,0.92)),url('rayco_rg35_action.jpg') center/cover no-repeat}.hero h1{font-family:'Oswald',sans-serif;font-weight:700;font-size:clamp(36px,7vw,68px);line-height:1.0;letter-spacing:0.02em;text-transform:uppercase;margin-bottom:12px}.hero h1 span{color:var(--lightblue)}.hero-sub{font-family:'Oswald',sans-serif;font-weight:400;font-size:clamp(16px,3vw,22px);letter-spacing:0.12em;text-transform:uppercase;color:var(--gray);margin-bottom:32px}.hero-btns{display:flex;gap:16px;flex-wrap:wrap;justify-content:center}.btn-primary{font-family:'Oswald',sans-serif;font-weight:600;font-size:16px;letter-spacing:0.08em;text-transform:uppercase;color:var(--white);background:var(--blue);padding:14px 36px;border-radius:6px;text-decoration:none;transition:background 0.2s;display:inline-block}.btn-primary:hover{background:var(--lightblue)}.btn-secondary{font-family:'Oswald',sans-serif;font-weight:600;font-size:16px;letter-spacing:0.08em;text-transform:uppercase;color:var(--white);background:transparent;border:1px solid rgba(255,255,255,0.3);padding:14px 36px;border-radius:6px;text-decoration:none;transition:border-color 0.2s,color 0.2s;display:inline-block}.btn-secondary:hover{border-color:var(--lightblue);color:var(--lightblue)}.breadcrumb{max-width:1100px;margin:0 auto;padding:16px 24px;font-size:13px;color:var(--gray)}.breadcrumb a{color:var(--lightblue);text-decoration:none}.breadcrumb a:hover{text-decoration:underline}section{padding:88px 24px;max-width:1100px;margin:0 auto}.section-label{font-family:'Oswald',sans-serif;font-weight:500;font-size:12px;letter-spacing:0.22em;text-transform:uppercase;color:var(--lightblue);margin-bottom:12px}.section-title{font-family:'Oswald',sans-serif;font-weight:700;font-size:clamp(30px,5vw,48px);text-transform:uppercase;line-height:1.05;margin-bottom:20px}.section-divider{width:100%;height:1px;background:var(--border)}.content-layout{display:grid;grid-template-columns:1fr 1fr;gap:64px;margin-top:48px;align-items:start}.content-layout img{width:100%;height:auto;border-radius:4px}.content-text p{font-size:15px;color:var(--gray);line-height:1.8;margin-bottom:20px}.content-text h3{font-family:'Oswald',sans-serif;font-weight:600;font-size:20px;text-transform:uppercase;letter-spacing:0.04em;margin-bottom:12px;margin-top:32px;color:var(--white)}.nearby-section{text-align:center}.nearby-tags{display:flex;flex-wrap:wrap;gap:10px;justify-content:center;margin-top:40px}.nearby-tag{font-family:'Oswald',sans-serif;font-weight:500;font-size:13px;letter-spacing:0.1em;text-transform:uppercase;color:var(--lightblue);border:1px solid var(--border);padding:8px 18px;text-decoration:none;transition:border-color 0.2s}.nearby-tag:hover{border-color:var(--lightblue)}.faq-list{margin-top:48px;display:flex;flex-direction:column;gap:2px}.faq-item{background:var(--darkgray);padding:28px 32px}.faq-item h3{font-family:'Oswald',sans-serif;font-weight:600;font-size:18px;text-transform:uppercase;letter-spacing:0.04em;margin-bottom:10px;color:var(--white)}.faq-item p{font-size:14px;color:var(--gray);line-height:1.7}.contact-section{background:var(--blue)}.contact-inner{max-width:1100px;margin:0 auto;padding:88px 24px;display:grid;grid-template-columns:1fr 1fr;gap:80px;align-items:center}.contact-inner h2{font-family:'Oswald',sans-serif;font-weight:700;font-size:clamp(30px,5vw,52px);text-transform:uppercase;line-height:1.05;margin-bottom:16px}.contact-inner p{font-size:15px;color:rgba(255,255,255,0.75);line-height:1.7}.contact-details{display:flex;flex-direction:column;gap:24px}.contact-item-label{font-family:'Oswald',sans-serif;font-weight:500;font-size:11px;letter-spacing:0.2em;text-transform:uppercase;color:rgba(255,255,255,0.75);margin-bottom:4px}.contact-item-value{font-family:'Oswald',sans-serif;font-weight:700;font-size:26px;color:var(--white);text-decoration:none;letter-spacing:0.02em;transition:opacity 0.2s;display:block}.contact-item-value:hover{opacity:0.8}.contact-item-value.small{font-size:18px;font-weight:500}footer{background:#171717;padding:32px 24px;text-align:center;border-top:1px solid var(--border)}footer p{font-size:12px;color:#888;letter-spacing:0.06em}footer p span{color:var(--lightblue)}@media(max-width:768px){.content-layout,.contact-inner{grid-template-columns:1fr;gap:48px}nav{padding:0 16px}.nav-name{font-size:13px}}
</style>
</head>
<body>
<a href="#main-content" class="skip-link">Skip to main content</a>
<nav aria-label="Main navigation">
  <a href="index.html" class="nav-logo">
    <img class="nav-wave" src="waves_logo_small.png" alt="North Coast Stump Grinding logo">
    <span class="nav-name">North Coast Stump Grinding</span>
  </a>
  <a href="tel:4404294524" class="nav-cta">(440) 429-4524</a>
</nav>
<main id="main-content">
<section class="hero">
  <h1>Stump Grinding<br><span>in ${CITY}, OH</span></h1>
  <p class="hero-sub">Fast, Affordable Stump Removal</p>
  <div class="hero-btns">
    <a href="tel:4404294524" class="btn-primary">Call Now — (440) 429-4524</a>
    <a href="mailto:northcoaststumps@gmail.com" class="btn-secondary">Get a Quote</a>
  </div>
</section>
<div class="breadcrumb" aria-label="Breadcrumb">
  <a href="index.html">Home</a> &rsaquo; Stump Grinding in ${CITY}, OH
</div>
<div class="section-divider"></div>
<section>
  <div class="section-label">${CITY}, Ohio</div>
  <h2 class="section-title">Stump Grinding for<br>${CITY} Homeowners</h2>
  <div class="content-layout">
    <div class="content-text">
      <p>${CONTENT_P1}</p>
      <p>${CONTENT_P2}</p>
      <h3>${H3_1}</h3>
      <p>${CONTENT_P3}</p>
      <p>${CONTENT_P4}</p>
      <h3>${H3_2}</h3>
      <p>${CONTENT_P5}</p>
    </div>
    <img src="${IMAGE}" alt="Professional stump grinding service in ${CITY}, Ohio" loading="lazy">
  </div>
</section>
<div class="section-divider"></div>
<section>
  <div class="section-label">Common Questions</div>
  <h2 class="section-title">${CITY} Stump Grinding FAQ</h2>
  <div class="faq-list">
    <div class="faq-item">
      <h3>${FAQ1_Q}</h3>
      <p>${FAQ1_A}</p>
    </div>
    <div class="faq-item">
      <h3>${FAQ2_Q}</h3>
      <p>${FAQ2_A}</p>
    </div>
    <div class="faq-item">
      <h3>${FAQ3_Q}</h3>
      <p>${FAQ3_A}</p>
    </div>
    <div class="faq-item">
      <h3>${FAQ4_Q}</h3>
      <p>${FAQ4_A}</p>
    </div>
  </div>
</section>
<div class="section-divider"></div>
<section class="nearby-section">
  <div class="section-label">Nearby Service Areas</div>
  <h2 class="section-title">We Also Serve</h2>
  <div class="nearby-tags">
    ${NEARBY}
  </div>
</section>
<div class="section-divider"></div>
<div class="contact-section">
  <div class="contact-inner">
    <div>
      <h2>Get a Free Quote<br>in ${CITY}</h2>
      <p>Call or text anytime for a fast quote on stump grinding in ${CITY}, OH. We respond quickly and can usually get to your job within the week.</p>
    </div>
    <div class="contact-details">
      <div>
        <div class="contact-item-label">Phone / Text</div>
        <a href="tel:4404294524" class="contact-item-value">(440) 429-4524</a>
      </div>
      <div>
        <div class="contact-item-label">Email</div>
        <a href="mailto:northcoaststumps@gmail.com" class="contact-item-value small">northcoaststumps@gmail.com</a>
      </div>
      <div>
        <div class="contact-item-label">Website</div>
        <a href="index.html" class="contact-item-value small">northcoaststumpgrinding.com</a>
      </div>
    </div>
  </div>
</div>
</main>
<footer>
  <p>&copy; 2026 <span>North Coast Stump Grinding</span> &middot; Cleveland, OH &middot; All rights reserved</p>
</footer>
</body>
</html>
ENDHTML
  echo "Created: $FILE"
}

# PARMA
create_page "Parma" "parma-oh" "rayco_rg35_action2.jpg" \
  "Parma is one of Cleveland's largest suburbs, with miles of residential streets lined with mature shade trees. Many homes were built in the 1950s through 1970s, and the trees planted when those neighborhoods were new are now decades old. When these large trees come down, they leave behind equally large stumps." \
  "We provide professional stump grinding throughout Parma — from the Ridgewood neighborhood to the State Road corridor and Pleasant Valley area. Our equipment handles stumps of all sizes, and Parma's generous lot sizes typically make for easy access." \
  "Big Lots, Big Stumps" \
  "Unlike the tighter inner-ring suburbs, most Parma properties have full driveways, wider side yards, and open backyards. That means we can bring in our equipment quickly and get the job done without worrying about tight squeezes between houses." \
  "We grind every stump below grade so you can resod, landscape, or simply reclaim your yard. All grindings are left in the hole for natural backfill or raked across the surrounding area." \
  "City Tree Removals" \
  "Parma's forestry department manages trees along city streets and tree lawns. When the city removes a tree, the stump is often left behind. If you want it gone, we can grind it down — just confirm with the city first if the tree was on public property." \
  "How much does stump grinding cost in Parma?" \
  "Most residential stumps in Parma range from \$100–\$400 depending on size. Parma's larger lots and good access typically keep costs on the lower end. Call (440) 429-4524 for a free estimate." \
  "Can you handle large stumps from old trees?" \
  "Absolutely. Many Parma homes have mature maples, oaks, and ash trees that leave behind stumps 24 inches or larger. Our commercial-grade equipment grinds stumps of any size down below grade." \
  "Do you grind tree lawn stumps in Parma?" \
  "Yes. Many tree lawn stumps are left behind after city tree removals. We can grind these down so you can replant or simply have a clean tree lawn. Check with the City of Parma first if the tree was city-managed." \
  "How quickly can you schedule in Parma?" \
  "We batch jobs by area throughout the week. Most Parma jobs are scheduled within the same week — we're in the Parma area regularly." \
  '<a href="index.html" class="nearby-tag">Cleveland</a><a href="stump-grinding-strongsville-oh.html" class="nearby-tag">Strongsville</a><a href="stump-grinding-berea-oh.html" class="nearby-tag">Berea</a><a href="stump-grinding-north-olmsted-oh.html" class="nearby-tag">North Olmsted</a><a href="stump-grinding-lakewood-oh.html" class="nearby-tag">Lakewood</a><a href="stump-grinding-brunswick-oh.html" class="nearby-tag">Brunswick</a>'

# STRONGSVILLE
create_page "Strongsville" "strongsville-oh" "rayco_rg35_action4.jpg" \
  "Strongsville is a thriving suburb southwest of Cleveland where newer developments sit alongside established neighborhoods, many backing up to wooded areas. The city's growth over the past few decades means thousands of properties have mature trees that occasionally need removal — and the stumps left behind." \
  "We provide professional stump grinding throughout Strongsville, from the neighborhoods around SouthPark Mall to the Royalton Road corridor and the residential streets off Pearl Road. Whether it's a single stump in your front yard or a dozen left over from lot clearing, we handle it." \
  "HOA Communities" \
  "Many Strongsville neighborhoods have homeowners associations that require prompt cleanup after tree removal. That includes getting rid of the stump. We work with Strongsville homeowners to meet HOA deadlines with fast scheduling — most jobs are completed within the same week of your call." \
  "Our equipment handles any size stump and leaves your yard clean. Grindings are backfilled into the hole or spread across the area so you're ready to resod or landscape right away." \
  "Wooded Lot Properties" \
  "Several Strongsville developments border wooded areas or were built on formerly wooded land. If you're clearing stumps from multiple trees on a larger lot, ask about our multi-stump pricing — the more stumps we grind in one visit, the better the per-stump rate." \
  "How much does stump grinding cost in Strongsville?" \
  "Most residential stumps in Strongsville range from \$100–\$400. For multiple stumps, we offer volume pricing that brings the per-stump cost down. Call (440) 429-4524 for a free estimate." \
  "Do you work with HOA requirements?" \
  "Yes. We understand that many Strongsville HOAs require stumps to be removed within a set timeframe after tree work. We offer fast scheduling to help you stay in compliance." \
  "Can you grind multiple stumps on a wooded lot?" \
  "Absolutely. We handle properties with multiple stumps regularly. The more stumps we grind in a single visit, the better rate we can offer per stump." \
  "How soon can you get to Strongsville?" \
  "We're in the Strongsville area regularly and can usually schedule your job within the same week. Call or text (440) 429-4524 to get on the schedule." \
  '<a href="stump-grinding-berea-oh.html" class="nearby-tag">Berea</a><a href="stump-grinding-brunswick-oh.html" class="nearby-tag">Brunswick</a><a href="stump-grinding-parma-oh.html" class="nearby-tag">Parma</a><a href="stump-grinding-north-olmsted-oh.html" class="nearby-tag">North Olmsted</a><a href="stump-grinding-medina-oh.html" class="nearby-tag">Medina</a>'

# WESTLAKE
create_page "Westlake" "westlake-oh" "rayco_rg35_action.jpg" \
  "Westlake is one of Cleveland's most desirable western suburbs, known for well-maintained properties and mature landscaping. Homeowners here take pride in their yards, and a leftover tree stump can be an eyesore on an otherwise polished property." \
  "We provide professional stump grinding throughout Westlake — from the neighborhoods around Crocker Park to the Center Ridge Road corridor and Dover Center area. Our equipment gets in and out quickly, leaving your landscape clean and ready for whatever comes next." \
  "Landscaping-Friendly Service" \
  "Westlake properties often have professionally designed landscapes with gardens, patios, and decorative features. We take care to protect surrounding landscaping during the grinding process. Our compact equipment minimizes lawn damage, and we clean up thoroughly so your yard looks like we were never there — minus the stump." \
  "Every stump is ground below grade, and the grindings are backfilled or spread according to your preference. Many Westlake homeowners use the opportunity to plant a new tree or extend a garden bed." \
  "Property Value Matters" \
  "In a community like Westlake where property values are strong, a rotting stump in the front yard sends the wrong message. Stump grinding is a quick, affordable way to maintain curb appeal — especially if you're planning to sell or have just moved in and inherited someone else's stumps." \
  "How much does stump grinding cost in Westlake?" \
  "Most residential stumps in Westlake range from \$100–\$400 depending on size and location. Call (440) 429-4524 for a free estimate — we're happy to come take a look." \
  "Will stump grinding damage my landscaping?" \
  "We take great care to protect surrounding plants, gardens, and hardscaping. Our equipment is compact and precise. Any wood chips or debris are cleaned up before we leave." \
  "Can you grind a stump near a fence or patio?" \
  "Yes. Our equipment can work close to structures, fences, and hardscaping. We'll assess the situation on-site and let you know the best approach." \
  "How quickly can you schedule in Westlake?" \
  "We're in the Westlake area regularly. Most jobs are scheduled within the same week of your call." \
  '<a href="stump-grinding-rocky-river-oh.html" class="nearby-tag">Rocky River</a><a href="stump-grinding-north-olmsted-oh.html" class="nearby-tag">North Olmsted</a><a href="stump-grinding-avon-oh.html" class="nearby-tag">Avon</a><a href="stump-grinding-lakewood-oh.html" class="nearby-tag">Lakewood</a><a href="index.html" class="nearby-tag">Cleveland</a>'

# AVON
create_page "Avon" "avon-oh" "rayco_rg35_action3.jpg" \
  "Avon is one of the fastest-growing suburbs west of Cleveland, with new developments going up alongside established neighborhoods. Much of this growth has been on formerly wooded or agricultural land, which means lot clearing often leaves stumps behind that builders don't always remove." \
  "We provide professional stump grinding throughout Avon — from the French Creek district to the Detroit Road corridor and newer subdivisions off Chester Road. Whether you're a new homeowner dealing with leftover construction stumps or you've just had a tree removed, we'll get it handled." \
  "New Construction Stumps" \
  "If you recently bought a new-build home in Avon, you may have noticed stumps in your yard from trees cleared during construction. Builders often cut trees flush with the ground but skip the grinding. We clean these up so you can finish your landscaping without obstacles." \
  "Avon's larger lot sizes give us great access with our equipment. Most jobs are quick and clean — we grind below grade, backfill the hole, and leave your yard ready for sod or seed." \
  "Established Neighborhoods" \
  "Avon's older neighborhoods along Detroit Road and Route 83 have mature trees that sometimes need to come down due to age, disease, or storm damage. We grind stumps of any size and can handle multiple stumps in a single visit for better pricing." \
  "How much does stump grinding cost in Avon?" \
  "Most residential stumps in Avon range from \$100–\$400. New construction stumps from lot clearing are often smaller and can be on the lower end. Call (440) 429-4524 for a free estimate." \
  "Can you grind stumps left by builders?" \
  "Yes — this is one of our most common requests in Avon. Builders often leave stumps cut at ground level. We grind them below grade so you can landscape over them." \
  "Do you offer pricing for multiple stumps?" \
  "Absolutely. If you have several stumps from lot clearing or multiple tree removals, we offer volume pricing that brings the per-stump cost down significantly." \
  "How soon can you get to Avon?" \
  "We service the Avon area regularly and can usually schedule within the same week. Call or text (440) 429-4524." \
  '<a href="stump-grinding-westlake-oh.html" class="nearby-tag">Westlake</a><a href="stump-grinding-north-olmsted-oh.html" class="nearby-tag">North Olmsted</a><a href="stump-grinding-lorain-oh.html" class="nearby-tag">Lorain</a><a href="stump-grinding-elyria-oh.html" class="nearby-tag">Elyria</a><a href="stump-grinding-rocky-river-oh.html" class="nearby-tag">Rocky River</a>'

echo "Batch 1 complete (Parma, Strongsville, Westlake, Avon)"
