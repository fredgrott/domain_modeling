// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Disposablee interface for when creating interaction objects for
/// app architecture as the Dart SDK still does not have one per issue:
/// https://github.com/dart-lang/sdk/issues/43490
///
///
/// @author Fredrick Allan Grott
abstract class Disposable {
  void dispose();
}

/// AsyncDispoable for those requiring sync dipsoable
/// I do not extend disposable as that would set up an antipattern of ignoring 
/// ignoring a returned Future as it would exeten the void dispose method.
/// 
/// @author Fredrick Allan Grott
abstract class AsyncDisposable{
  
  Future<void> dispose();
}
