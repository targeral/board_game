import 'package:flutter/material.dart';
import './utils/utils.dart';
import './pages/login.dart';
import './pages/ChatList.dart';

class MyAppBar extends StatelessWidget {
    MyAppBar({this.title});

    final Widget title;

    @override
    Widget build(BuildContext context) {
        return new Container(
            height: 56.0,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            margin: const EdgeInsets.only(top: 30),
            child: new Row(
                children: <Widget>[
                    new IconButton(
                        icon: new Icon(Icons.menu),
                        tooltip: 'Navigation menu',
                        onPressed: null,
                    ),
                    new Expanded(
                        child: title,
                    ),
                    new IconButton(
                        icon: new Icon(Icons.search),
                        tooltip: 'Search',
                        onPressed: null,
                    )
                ],
            ),
        );
    }
}

class Myscaffold extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Material(
            child: new Column(
                children: <Widget>[
                    new MyAppBar(
                        title: new Text(
                            'example title',
                            style: Theme.of(context).primaryTextTheme.title,
                        ),
                    ),
                    new Expanded(
                        child: new Center(
                            child: new RaisedButton(
                                child: new Text('go to login'),
                                onPressed: () {
                                    goTo('/login', context);
                                },
                            )
                        ),
                    ),
                ],
            ),
        );
    }
}

void main() {
    runApp(new MaterialApp(
        title: 'My app',
        home: new Myscaffold(),
        routes: <String, WidgetBuilder> {
            '/login': transformRouter(LoginPage()),
            '/chatlist': transformRouter(ChatList()),
        },
    ));
}