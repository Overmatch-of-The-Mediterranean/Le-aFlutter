
import 'package:helloflutter/douban/model/home_model.dart';
import 'package:helloflutter/service/http_request.dart';
import '../service/config.dart';


class HomeRequest {
  static Future<List<MovieItem>> requestMovieList(int start) async{

    final url = "/movie/top250?start=$start&count=${HomeConfig.movieCount}";

    // 发送网络请求
    final res = await HttpRequest.request(url);

    final subjects = res['subject'];

    // Map转换成对象

    List<MovieItem> movies = [];

    for(var sub in subjects) {
      movies.add(MovieItem.fromMap(sub));
    }

    return movies;

}
}