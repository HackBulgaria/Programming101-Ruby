It's time again to create another web application.

This time we'll be working on an online store. The application should provide only REST services in the form of JSON-formatted responses. No pretty HTML this time.

We have a couple of concepts in our store that you should be aware of. First we have brands. Every brand goes with its name and a short description. It represents the producer of a product. We have categories. They have names only. Then we have products where each product has a name, a brand, a category, a price and a quantity of stock.

What you have to do is define the following endpoints:
* `GET /brands/count` - Returns count of the brands in the store.
* `GET /brands/{index}` - Returns the brand with {index}.
* `GET /brands/range/{index}/{count}` - Returns {count} brands starting from {index}.
* `GET /brands/range/{index}` - Returns all brands starting from {index}.
* `GET /brands` - Returns all brands registered in the store.
* `POST /brands/new` - Creates a new brand.
* `PUT /brands/{index}` - Updates brand with {index}.
* `DELETE /brands/{index}` - Deletes brand with {index}.
* `GET /categories/count` - Returns count of the categories in the store.
* `GET /categories/{index}` - Returns the category with {index}.
* `GET /categories/range/{index}/{count}` - Returns {count} categories starting from {index}.
* `GET /categories/range/{index}` - Returns all categories starting from {index}.
* `GET /categories` - Returns all categories registered in the store.
* `POST /categories/new` - Creates a new category.
* `PUT /categories/{index}` - Updates category with {index}.
* `DELETE /categories/{index}` - Deletes category with {index}.
* `GET /products/count` - Returns count of the products in the store.
* `GET /products/{index}` - Returns the product with {index}.
* `GET /products/range/{index}/{count}` - Returns {count} products starting from {index}.
* `GET /products/range/{index}` - Returns all products starting from {index}.
* `GET /products` - Returns all products registered in the store.
* `POST /products/new` - Creates a new product.
* `PUT /products/{index}` - Updates product with {index}.
* `DELETE /products/{index}` - Deletes product with {index}.
* `GET /search/{type}/{slug}` - Returns entities of specified {type} with name that contains {slug}. E.g: GET /search/product/something
* `GET /search/{type}/{property}/{slug}` - Returns entities of specified {type} with {property} that contains {slug}. E.g: GET /search/category/description/something

To make things more interesting we'll require you to **NOT** use generators at all!

Start by using mock data for these entities and only do the "piping" by defining the required routes and actions. Next time we'll cover persistence and you will be able to actually store this data on disk.
