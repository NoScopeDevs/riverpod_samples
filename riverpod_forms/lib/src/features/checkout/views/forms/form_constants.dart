class CheckoutOption {
  CheckoutOption({
    required this.title,
    required this.description,
    required this.price,
  });

  final String title;
  final String description;
  final double price;
}

///* Cable options for checkout
final kCableLengthOptions = [
  CheckoutOption(
    title: '5 mtr',
    description: 'Best 5mtr',
    price: 0.0,
  ),
  CheckoutOption(
    title: '7.5 mtr',
    description: 'Best 5mtr',
    price: 75.0,
  ),
];

///* Warranty options for checkout

final kWarrantyOptions = [
  CheckoutOption(
    title: '3 Years',
    description: 'Standard Warranty',
    price: 0.0,
  ),
  CheckoutOption(
    title: '5 Years',
    description: 'Premium Warranty',
    price: 75.0,
  ),
];
