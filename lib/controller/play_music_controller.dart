import 'dart:async';

import 'package:audioplayers/audioplayers.dart';

import '../core/resourses/constants_value.dart';

class PlayMusicController {
  late int index;
  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  late Uri uri;
  late StreamController<bool> playStatusStreamController;
  late Sink<bool> playStatusInputData;
  late Stream<bool> playStatusOutputData;
  late bool isPlaying;
  //! singletonPattern
  // construtor private
  //instatance
  // default constructor
  PlayMusicController._internal(this.index) {
    audioCache = AudioCache(prefix: "");
    audioPlayer = AudioPlayer();
    playStatusStreamController = StreamController();
    playStatusInputData = playStatusStreamController.sink;
    playStatusOutputData = playStatusStreamController.stream;
  }
  static PlayMusicController? instance;

  factory PlayMusicController(int index) {
    instance ??= PlayMusicController._internal(index);
    return instance!;
  }
  void play() async {
    uri = await audioCache.load(ConstantsValue.listQuarn[index!].pathSoura);
    audioPlayer.play(UrlSource(uri.toString()));
    isPlaying = true;
    playStatusInputData.add(isPlaying);
  }

  void changePlayStatus() {
    if (audioPlayer.state == PlayerState.playing) {
      audioPlayer.pause();
      isPlaying = false;
    } else if (audioPlayer.state == PlayerState.paused) {
      audioPlayer.resume();
      isPlaying = true;
    }
    playStatusInputData.add(isPlaying);
  }

  // void disposeAudio()  {
  //   audioPlayer.dispose();

  // }
}
