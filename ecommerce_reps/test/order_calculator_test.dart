import 'package:electronic_stores_reps/features/orders/domain/order_calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() { test('calculates total and net profit', () { const calc = OrderCalculator(); expect(calc.totalPrice(sellingPrice: 20, quantity: 2, shippingCost: 5), 45); expect(calc.profit(sellingPrice: 20, costPrice: 12, quantity: 2, shippingCost: 5), 11); }); }
