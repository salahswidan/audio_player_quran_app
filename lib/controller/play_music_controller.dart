import 'package:audioplayers/audioplayers.dart';

import '../core/resourses/constants_value.dart';

class PlayMusicController {
  late int index;
  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  late Uri uri;
  PlayMusicController(this.index) {
    audioPlayer = AudioPlayer();
     audioCache = AudioCache(prefix: "");
  }
  void play() async {
    // uri = await audioCache.load(ConstantsValue.listQuarn[index!].pathSoura);
    // audioPlayer.play(UrlSource(uri.toString()));
  }

  void disposeAudio()  {
    audioPlayer.dispose();
    // AudioCache audioCache = AudioCache(prefix: "");
    // Uri uri = await audioCache.load(ConstantsValue.listQuarn[index!].pathSoura);
    // AudioPlayer audioPlayer = AudioPlayer();
    // audioPlayer.dispose();
  }
}
