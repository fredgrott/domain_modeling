// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Borrowed from zam core by Zamstation copyright 2021
// BSD 3-clause license

import 'json.dart';

// Gist: to avoid code generation using either Built Value or Freezed in 
//       entities and models I use manually serilaizing objects to json

///
/// Alias for function that converts a object in to an map.
///
typedef Serialize<T extends Object?> = Json Function(T item);
