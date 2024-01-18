import 'package:flutter/material.dart';

import 'song_model.dart';

class PlaylistProvider extends ChangeNotifier {
  final List<Song> playlists = [
    Song(
        songName: "So Sick",
        artistName: "Neyo",
        albumArtImagePath: "assets/images/1.png",
        audioPath: "audio/song.mp3"),
    Song(
        songName: "Acid Rap",
        artistName: "Chance The Rapper",
        albumArtImagePath: "assets/images/2.png",
        audioPath: "audio/song.mp3"),
    Song(
        songName: "Pheonix",
        artistName: "ASAP Rocky",
        albumArtImagePath: "assets/images/3.png",
        audioPath: "audios/song.mp3"),
  ];


  int? currentSongIndex;
  List<Song> get getPlaylist => playlists;
  int? get getCurrentSongIndex => currentSongIndex;


  set setCurrentSongIndex(int? index) {
    currentSongIndex = index;
    notifyListeners();
  }
}
