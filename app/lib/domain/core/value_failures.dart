import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

/// Immutable class that handles errors related to incorrect values.
///
/// Contains two methods to be returned in case of
/// incorrect user's email or password input.
///
/// [freezed] helps to deal with immutable objects.
///
/// Features like "tagged union types" / sealed classes / pattern matching
/// may be familiar to you from other languages.
/// Dart does not support those by itself, although [freezed] does,
/// by using a syntax similar to Kotlin.
///
/// Uses [_$ValueFailure] generated by freezed package.
/// Freezed can be used for both data classes and unions.
/// It generates value equality, copyWith, exhaustive switch
/// and JSON serialization support.
///
/// This uses factory function, because [ValueFailure] is immutable
/// and *factory* constructors which are [freezed]'s way to declare properties.
@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  /// This takes only [incorrectValue] property as parameter.
  /// [incorrectValue] is a string that must not be null,
  /// It is user's email input which did not pass the validation.
  /// [InvalidEmail] is a class generated in *.freezed* file.
  const factory ValueFailure.invalidEmail({
    required String incorrectValue,
  }) = InvalidEmail<T>;

  /// This takes only [incorrectValue] property as parameter.
  /// [incorrectValue] is a string that must not be null,
  /// It is user's pasword input which did not pass the validation.
  /// [InvalidPassword] is a class generated in *.freezed* file.
  const factory ValueFailure.invalidPassword({
    required String incorrectValue,
  }) = InvalidPassword<T>;
}
