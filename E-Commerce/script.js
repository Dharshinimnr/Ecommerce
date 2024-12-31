document.addEventListener("DOMContentLoaded", () => {
    let products = [];
    let categories = new Set();

    // Fetch products and render them
    fetch("fetch_products.php")
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            products = data;

            // Extract unique categories
            data.forEach(product => {
                if (product.category) {
                    categories.add(product.category);
                }
            });
            populateCategoryDropdown();

            renderProducts(products);
        })
        .catch(error => console.error("Error fetching products:", error));

    // Populate the category dropdown
    const populateCategoryDropdown = () => {
        const categoryDropdown = document.getElementById("filter-category");
        categories.forEach(category => {
            categoryDropdown.innerHTML += `<option value="${category}">${category}</option>`;
        });
    };

    // Render products to the DOM
    const renderProducts = (productList) => {
        const productContainer = document.getElementById("product-list");
        productContainer.innerHTML = "";
        if (productList.length === 0) {
            productContainer.innerHTML = `<p class="text-center">No products found.</p>`;
            return;
        }
        productList.forEach(product => {
            productContainer.innerHTML += `
                  <div class="col-md-4">
                    <div class="card">
                        <img src="${product.image}" class="card-img-top" alt="${product.name}" style="height: 300px;">
                        <div class="card-body">
                            <h5 class="card-title">${product.name}</h5>
                            <p class="card-text">${product.description}</p>
                            <p class="card-text text-primary">Price: ₹${product.price}</p>
                            <a href="#" class="btn btn-primary">View Details</a>
                        </div>
                    </div>
                </div>`;
        });
    };

    // Filter products based on search and category
    const filterProducts = () => {
        const searchText = document.getElementById("search-bar").value.toLowerCase();
        const selectedCategory = document.getElementById("filter-category").value;

        const filteredProducts = products.filter(product => {
            const matchesSearch =
                product.name.toLowerCase().includes(searchText) ||
                product.description.toLowerCase().includes(searchText);

            const matchesCategory =
                selectedCategory === "all" || product.category === selectedCategory;

            return matchesSearch && matchesCategory;
        });

        renderProducts(filteredProducts);
    };

    // Event listener for search bar
    const searchBar = document.getElementById("search-bar");
    const filterDropdown = document.getElementById("filter-category");

    if (searchBar && filterDropdown) {
        searchBar.addEventListener("input", filterProducts);
        filterDropdown.addEventListener("change", filterProducts);
    } else {
        console.error("Search bar or filter dropdown not found in the DOM.");
    }
});
