import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cart.dart';
import 'demo_cart_provider.dart';

/// API for reading, watching and writing cart data for a specific user ID
abstract class RemoteCartRepository {
  Future<Cart> fetchCart(String uid);

  Stream<Cart> watchCart(String uid);

  Future<void> setCart(String uid, Cart cart);
}

final remoteCartRepositoryProvider = Provider<RemoteCartRepository>((ref) {
  // TODO: replace with "real" remote cart repository
  return FakeRemoteCartRepository(addDelay: false);
});
