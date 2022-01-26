// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import '../models/ientity.dart';

abstract class IDatasource {
  Future<IEntity> getEntity(int id);

  Future<void> addEntity(IEntity entity);
}
