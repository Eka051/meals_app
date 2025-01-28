import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  void toggleFavorite(Meal meal) {
    if (state.contains(meal)) {
      state = List.from(state)..remove(meal);
    } else {
      state = List.from(state)..add(meal);
    }
  }
}

final favoritesMealsProvider = StateNotifierProvider((ref) {
  return FavoriteMealsNotifier();
});