// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../error/app_exception.dart';

/// Interface for an USeCase
/// 
/// @author Fredrick Allan Grott
abstract class AppUseCase<Type, Params>{

  // states that we can call an implementation of AppUseCase as a function, i.e. AppUseCase(t, params)
  Future<Either<AppException, Type>> call(Params params);


}

/// NoParams class to use when the UseCase has no input parameters
/// 
/// @author Fredrick Allan Grott
class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
