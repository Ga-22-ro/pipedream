class OrderCalculator {
  const OrderCalculator();
  double totalPrice({required double sellingPrice, required int quantity, double shippingCost = 0}) => sellingPrice * quantity + shippingCost;
  double profit({required double sellingPrice, required double costPrice, required int quantity, double shippingCost = 0}) => (sellingPrice - costPrice) * quantity - shippingCost;
}
