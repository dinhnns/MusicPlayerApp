import 'dart:async';

import 'package:demo/data/repository/repository.dart';

import '../../data/model/song.dart';
import '../../data/reponsitory/reponsitory.dart';

class MusicAppViewModel {
  StreamController<List<Song>> songStream = StreamController();

  void loadSongs() {
    final repository = DefaultRepository();
    repository.loadData().then((value) => songStream.add(value!));
  }
}