import 'package:flutter/material.dart';
import 'package:gotapp/episodes_page.dart';
import 'package:gotapp/got.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String url="http://api.tvmaze.com/singlesearch/shows?q=game-of-thrones&embed=episodes";

  Widget myBody() {
    return Container();
  }

  @override
  void initState() {
    super.initState();
    fetchEpisodes();
  }

  fetchEpisodes() async{
    var res= await http.get(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Game of Thrones")),
      body: myBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
      ),
    );
  }
}
