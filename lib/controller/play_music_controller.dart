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
    playStatusOutputData =
        playStatusStreamController.stream.asBroadcastStream();
  }
  static PlayMusicController? instance;

  factory PlayMusicController(int index) {
    if (instance != null) instance!.index = index;
    instance ??= PlayMusicController._internal(index);
    return instance!;
  }
  Duration? audioTime;
  Future<Duration?> play() async {
    uri = await audioCache.load(ConstantsValue.listQuarn[index!].pathSoura);
    await audioPlayer.play(UrlSource(uri.toString()));
    audioTime = await audioPlayer.getDuration();
    // audioTimeInputData.add(audioTime!);
    print(audioTime);
    isPlaying = true;
    playStatusInputData.add(isPlaying);
    return audioTime!;
  }

  Future<String> myDuration() async {
    //   audioTime = await audioPlayer.getDuration();
    await Future.delayed(Duration(seconds: 4));
    //  return audioTime;
    return "hello";
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

  void disposeAudio() {
    playStatusInputData.close();
    playStatusStreamController.close();
  }

  String transferDurationToMinuteAndSecond(Duration? duration) {
    String minute = duration!.inMinutes.remainder(60).toString().padLeft(2, "0");
    String second = duration!.inSeconds.remainder(60).toString().padLeft(2, "0");
    return "${minute}:${second}";
  }
}
