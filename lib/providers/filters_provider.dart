import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter {
  glutenfree,
  lactosefree,
  vegetarian,
  vegan,
}

class FilterNotifier extends StateNotifier<Map<Filter, bool>> {
  FilterNotifier()
      : super({
          Filter.glutenfree: false,
          Filter.lactosefree: false,
          Filter.vegetarian: false,
          Filter.vegan: false,
        });

  void setFilter(Filter filter, bool isActive) {
    // state[filter] = isActive; // This will not work => mutating state
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filterProviders = StateNotifierProvider((ref) {
  return FilterNotifier();
});
