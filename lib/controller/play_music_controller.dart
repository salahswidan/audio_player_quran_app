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
  late StreamController<Duration> durationNowStreamController;
  late Sink<Duration> durationNowInputData;
  late Stream<String> durationNowOutputData;
  late StreamController<Duration> sliderValueStreamController;
  late Sink<Duration> sliderValueInputData;
  late Stream<double> sliderValueOutputData;
  late double valueSlider = 0;

  late bool isPlaying = true;
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

    sliderValueStreamController = StreamController();
    sliderValueInputData = sliderValueStreamController.sink;
    sliderValueOutputData = sliderValueStreamController.stream.map(
      (event) => transferDurationToValueSlider(event),
    );
    sliderValueOutputData = sliderValueStreamController.stream.map(
      (event) => transferDurationToValueSlider(event),
    );
    durationNowStreamController = StreamController();
    durationNowInputData = durationNowStreamController.sink;
    durationNowOutputData = durationNowStreamController.stream.map(
      (event) => transferDurationToMinuteAndSecond(event),
    );
    durationNowOutputData =
        durationNowStreamController.stream.asBroadcastStream().map(
              (event) => transferDurationToMinuteAndSecond(event),
            );
  }
  static PlayMusicController? instance;

  factory PlayMusicController(int index) {
    if (instance != null) instance!.index = index;
    instance ??= PlayMusicController._internal(index);
    return instance!;
  }
  Duration? audioTime;

  double transferDurationToValueSlider(Duration duration) {
    double durationNowInsecond = duration.inSeconds.toDouble();
    double maxTime = audioTime!.inSeconds.toDouble();
    valueSlider = (durationNowInsecond / maxTime) * 1.0;
    return valueSlider;
  }

  void onChangedThumbSlider(double value) {
    Duration duration = transferValueSliderToDuration(value);
    audioPlayer.seek(duration);
  }

  Duration transferValueSliderToDuration(double sliderValue) {
    double valueNow = (sliderValue / 1.0) * audioTime!.inSeconds.toDouble();
    return Duration(seconds: valueNow.toInt());
  }

  Future<Duration?> play() async {
    uri = await audioCache.load(ConstantsValue.listQuarn[index!].pathSoura);
    await audioPlayer.play(UrlSource(uri.toString()));
    audioTime = await audioPlayer.getDuration();
    audioPlayer.onPositionChanged.listen((event) {
      durationNowInputData.add(event);
      sliderValueInputData.add(event);
    });
    print(audioTime);
    isPlaying = true;
    playStatusInputData.add(isPlaying);
    return audioTime!;
  }

  Future<String> myDuration() async {
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
    String minute =
        duration!.inMinutes.remainder(60).toString().padLeft(2, "0");
    String second =
        duration!.inSeconds.remainder(60).toString().padLeft(2, "0");
    return "${minute}:${second}";
  }
}
