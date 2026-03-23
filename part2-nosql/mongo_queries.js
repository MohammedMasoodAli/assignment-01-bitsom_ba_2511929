// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
  {
    category: "Electronics",
    name: "Laptop",
    price: 65000,
    brand: "Dell",
    specs: { ram: "16GB", storage: "512GB SSD", processor: "Intel i7" }
  },
  {
    category: "Clothing",
    name: "T-Shirt",
    price: 1200,
    brand: "Nike",
    sizes: ["M", "L", "XL"],
    material: "Cotton"
  },
  {
    category: "Groceries",
    name: "Milk",
    price: 60,
    brand: "Amul",
    expiry_date: ISODate("2024-12-01"),
    nutrition: { protein: "3.4g", fat: "3.2g" }
  }
]);

// OP2: find Electronics products with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: ISODate("2025-01-01") }
});

// OP4: updateOne() — add discount_percent
db.products.updateOne(
  { name: "Laptop" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() on category
db.products.createIndex({ category: 1 });

// Reason: improves query performance when filtering by category