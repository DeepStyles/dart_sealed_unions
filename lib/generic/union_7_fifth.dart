import 'package:sealed_unions/union_7.dart';

class Union7Fifth<A, B, C, D, E, F, G> implements Union7<A, B, C, D, E, F, G> {
  final E _value;

  Union7Fifth(this._value);

  @override
  void continued(
    Function(A) continuationFirst,
    Function(B) continuationSecond,
    Function(C) continuationThird,
    Function(D) continuationFourth,
    Function(E) continuationFifth,
    Function(F) continuationSixth,
    Function(G) continuationSeventh,
  ) {
    continuationFifth(_value);
  }

  @override
  R join<R>(
    R Function(A) mapFirst,
    R Function(B) mapSecond,
    R Function(C) mapThird,
    R Function(D) mapFourth,
    R Function(E) mapFifth,
    R Function(F) mapSixth,
    R Function(G) mapSeventh,
  ) {
    return mapFifth(_value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union7Fifth &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
