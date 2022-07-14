import 'package:flutter_youtube_downloader/flutter_youtube_downloader.dart';

class  Download{
  Future<void> downloadVideo(String youTube_link, String title) async {
    final result = await FlutterYoutubeDownloader.downloadVideo(
        youTube_link, "Video Title goes Here", 18);
    print(result);
  }

}