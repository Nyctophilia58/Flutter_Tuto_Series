import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/product.dart';

part 'cart_provider.g.dart';

// To generate a Notifier Provider
@riverpod
class CartNotifier extends _$CartNotifier {
// class CartNotifier extends Notifier<Set<Product>>{

  @override
  Set<Product> build() {
    return const {
    };
  }

  // methods
  void addToCart(Product product){
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void removeFromCart(Product product) {
    if (state.contains(product)) {
      state = state.where((p) => p.id != product.id).toSet();
    }
  }
}

// final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>((){
//   return CartNotifier();
// });

// Dependent Provider
@riverpod
int cartTotal(dynamic ref) {
  final cartProducts = ref.watch(cartProvider);

  int total = 0;
  for (Product product in cartProducts) {
    total += product.price;
  }

  return total;
}