<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tasty Bites Restaurant</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, Helvetica, sans-serif;
        }

        body {
            background-color: #f8f8f8;
            color: #333;
        }

        header {
            background: #8b0000;
            color: white;
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h1 {
            font-size: 24px;
        }

        nav a {
            color: white;
            margin-left: 20px;
            text-decoration: none;
            font-weight: bold;
        }

        nav a:hover {
            text-decoration: underline;
        }

        .hero {
            background: url("https://images.unsplash.com/photo-1600891964599-f61ba0e24092") center/cover no-repeat;
            height: 90vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-align: center;
        }

        .hero h2 {
            font-size: 48px;
            margin-bottom: 10px;
        }

        .hero p {
            font-size: 20px;
        }

        section {
            padding: 60px 40px;
        }

        .about {
            background: white;
            text-align: center;
        }

        .about h2 {
            margin-bottom: 20px;
            color: #8b0000;
        }

        .menu {
            background: #f2f2f2;
        }

        .menu h2 {
            text-align: center;
            margin-bottom: 40px;
            color: #8b0000;
        }

        .menu-items {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }

        .menu-card {
            background: white;
            padding: 20px;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .menu-card h3 {
            margin-bottom: 10px;
        }

        .menu-card p {
            margin-bottom: 10px;
            color: #666;
        }

        .menu-card span {
            font-weight: bold;
            color: #8b0000;
        }

        .contact {
            background: white;
            text-align: center;
        }

        .contact h2 {
            margin-bottom: 20px;
            color: #8b0000;
        }

        footer {
            background: #8b0000;
            color: white;
            text-align: center;
            padding: 15px;
        }

        @media (max-width: 768px) {
            .hero h2 {
                font-size: 32px;
            }
        }
    </style>
</head>
<body>

    <header>
        <h1>Tasty Bites</h1>
        <nav>
            <a href="#home">Home</a>
            <a href="#about">About</a>
            <a href="#menu">Menu</a>
            <a href="#contact">Contact</a>
        </nav>
    </header>

    <div class="hero" id="home">
        <div>
            <h2>Delicious Food, Cozy Place</h2>
            <p>Fresh ingredients · Great taste · Best service</p>
        </div>
    </div>

    <section class="about" id="about">
        <h2>About Us</h2>
        <p>
            Welcome to Tasty Bites! We serve delicious meals made with fresh ingredients.
            Our goal is to give you a memorable dining experience.
        </p>
    </section>

    <section class="menu" id="menu">
        <h2>Our Menu</h2>
        <div class="menu-items">
            <div class="menu-card">
                <h3>Chicken Biryani</h3>
                <p>Rich & aromatic basmati rice</p>
                <span>₹250</span>
            </div>
            <div class="menu-card">
                <h3>Paneer Butter Masala</h3>
                <p>Soft paneer in creamy gravy</p>
                <span>₹220</span>
            </div>
            <div class="menu-card">
                <h3>Veg Fried Rice</h3>
                <p>Healthy & tasty vegetables</p>
                <span>₹180</span>
            </div>
            <div class="menu-card">
                <h3>Gulab Jamun</h3>
                <p>Sweet & soft dessert</p>
                <span>₹90</span>
            </div>
        </div>
    </section>

    <section class="contact" id="contact">
        <h2>Contact Us</h2>
        <p>📍 Hyderabad, India</p>
        <p>📞 +91 98765 43210</p>
        <p>✉️ tastybites@email.com</p>
    </section>

    <footer>
        <p>© 2026 Tasty Bites Restaurant. All Rights Reserved.</p>
    </footer>

</body>
</html>
