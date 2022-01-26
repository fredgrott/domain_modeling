// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Borrowed from zam core by Zamstation copyright 2021
// BSD 3-clause license

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../object/identifiable.dart';
import '../../serialize/json.dart';
import 'imodel.dart';

@immutable
abstract class IEntity<MODEL extends IModel>
    with EquatableMixin
    implements Identifiable<String> {
  @override
  bool get stringify => true;

  const IEntity();

  ///
  /// Children should implement this constructor.
  ///
  // ignore: avoid_unused_constructor_parameters
  const IEntity.fromJson(Json json);

  ///
  /// Children should implement this constructor.
  ///
  // ignore: avoid_unused_constructor_parameters
  const IEntity.fromModel(MODEL model);

  Json toJson();

  MODEL toModel();
}
