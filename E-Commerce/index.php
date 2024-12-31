<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-commerce Product Display</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Advanced Heading Styles */
        .heading-container {
            text-align: center;
            margin-top: 30px;
        }

        .heading-container h1 {
            font-size: 3rem;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 2px;
            background: linear-gradient(90deg, #4caf50, #009688);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .heading-container h1::after {
            content: "";
            display: block;
            width: 50px;
            height: 5px;
            background: #4caf50;
            margin: 10px auto 0;
            border-radius: 3px;
        }

        .heading-container i {
            color: #4caf50;
            font-size: 2rem;
            margin-right: 10px;
            animation: bounce 1s infinite;
        }

        @keyframes bounce {

            0%,
            100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-10px);
            }
        }

        /* Search Bar and Filter */
        .input-group {
            margin: auto;
            margin-top: 20px;
            max-width: 800px;
            display: flex;
            gap: 15px;
            align-items: center;
        }

        .search-bar-container {
            position: relative;
            flex: 2;
        }

        .search-bar {
            width: 100%;
            height: 40px;
            font-size: 16px;
            padding: 10px 40px;
            border-radius: 20px;
            border: 1px solid #ccc;
        }

        .search-icon {
            position: absolute;
            top: 50%;
            left: 15px;
            transform: translateY(-50%);
            font-size: 18px;
            color: #888;
        }

        .filter-container {
            position: relative;
            flex: 1;
        }

        #filter-category {
            width: 100%;
            height: 40px;
            border-radius: 20px;
            border: 1px solid #ccc;
            padding-left: 35px;
            font-size: 16px;
        }

        .filter-icon {
            position: absolute;
            top: 50%;
            left: 10px;
            transform: translateY(-50%);
            font-size: 18px;
            color: #888;
        }

        /* Buttons */
        .btn-primary {
            background: linear-gradient(90deg, #4caf50, #009688);
            border: none;
        }

        .btn-primary:hover {
            background: linear-gradient(90deg, #009688, #4caf50);
        }

        /* Card Styles */
        .card {
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            height: 100%;
        }

        .card img {
            width: 100%;
            height: 250px;
            object-fit: cover;
            border-radius: 5px;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0px 8px 12px rgba(0, 0, 0, 0.2);
        }

        .card-body {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        /* Card Button Styles */
        .card .btn-primary {
            width: 50%;
            margin: 10px auto 0;
            display: block;
            text-align: center;
            padding: 8px 0;
            font-size: 14px;
            border-radius: 20px;
        }
    </style>
</head>

<body>
    <div class="container mt-5">
        <!-- Enhanced Heading -->
        <div class="heading-container">
            <i class="fas fa-box-open"></i>
            <h1>Our Products</h1>
        </div>

        <!-- Search and Filter Section -->
        <div class="input-group">
            <!-- Search Bar -->
            <div class="search-bar-container">
                <i class="fas fa-search search-icon"></i>
                <input type="text" id="search-bar" class="search-bar" placeholder="Search for products..." />
            </div>

            <!-- Filter Dropdown -->
            <div class="filter-container">
                <i class="fas fa-filter filter-icon"></i>
                <select id="filter-category" class="form-select">
                    <option value="all">All Categories</option>
                </select>
            </div>
        </div>

        <div class="row mt-4" id="product-list">
            <!-- Product Cards Will Be Rendered Here -->
        </div>
    </div>

    <script>
        // Placeholder Typing Animation
        const searchBar = document.getElementById('search-bar');
        const placeholderText = "What are you looking for?";
        let index = 0;

        function typePlaceholder() {
            if (index < placeholderText.length) {
                searchBar.placeholder = placeholderText.slice(0, index + 1);
                index++;
                setTimeout(typePlaceholder, 120);
            } else {
                setTimeout(() => {
                    searchBar.placeholder = '';
                    index = 0;
                    typePlaceholder();
                }, 2000);
            }
        }

        window.onload = typePlaceholder;
    </script>
    <script src="script.js"></script>
</body>

</html>
