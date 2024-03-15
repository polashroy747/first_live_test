// Define a function to display fruit details
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  print('Original Fruit Details before Discount:');
  fruits.forEach((fruit) {
    print(
        'Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
  });
}

// Define a function to apply a discount to fruit prices
void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  fruits.forEach((fruit) {
    double price = fruit['price'];
    double discountedPrice = price - (price * discountPercentage / 100);
    fruit['price'] = discountedPrice;
  });
}

void main() {
  // Create a list of fruits
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0},
  ];

  // Display original fruit details
  displayFruitDetails(fruits);

  // Apply discount of 10%
  applyPriceDiscount(fruits, 10);

  // Display fruit details after discount
  print('\nFruit Details After Applying 10% Discount:');
  displayFruitDetails(fruits);
}
