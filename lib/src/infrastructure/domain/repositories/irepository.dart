// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:dartz/dartz.dart';

import '../../error/repo_exception.dart';
import '../models/imodel.dart';

abstract class IRepository {
  Future<Either<RepoException, IModel>> getItem(int id);

  Future<Either<RepoException, IModel>> addItem(int id);
}
