import 'package:audioplayers/audioplayers.dart';

import '../core/resourses/constants_value.dart';

class PlayMusicController {
  late int index;
  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  late Uri uri;
  //! singletonPattern
  // construtor private
  //instatance
  // default constructor
  PlayMusicController._internal(this.index) {
    audioCache = AudioCache(prefix: "");

    audioPlayer = AudioPlayer();
  }
  static PlayMusicController? instance;

  factory PlayMusicController(int index) {
    instance ??= PlayMusicController._internal(index);
    return instance!;
  }
  void play() async {
    uri = await audioCache.load(ConstantsValue.listQuarn[index!].pathSoura);
    audioPlayer.play(UrlSource(uri.toString()));
  }

  void stopAudio() {
    if (audioPlayer.state == PlayerState.playing) {
      audioPlayer.pause();
    } else if (audioPlayer.state == PlayerState.paused) {
      audioPlayer.resume();
    }
  }

  // void disposeAudio()  {
  //   audioPlayer.dispose();

  // }
}
