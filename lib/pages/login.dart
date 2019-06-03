import 'package:flutter/material.dart';
import './ChatList.dart';

class LoginPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Login'),
            ),
            body: Center(
                child: new Container(
                    padding: new EdgeInsets.all(50),
                    child: new Column(
                        children: <Widget>[
                            new LoginHeaderWidget(),
                            new LoginFormWidget(),
                        ],
                    ),
                )
            ),
        );
    }
}

class LoginHeaderWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Row(
             children: <Widget>[
                new Icon(Icons.movie),
                new Text('QQ')
            ],
        );
    }
}

class LoginFormWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Column(
            children: <Widget>[
                new ExampleWidget()
            ],
        );
    }
}

class ExampleWidget extends StatefulWidget {
  ExampleWidget({Key key}) : super(key: key);

  @override
  _ExampleWidgetState createState() => new _ExampleWidgetState();
}

/// State for [ExampleWidget] widgets.
class _ExampleWidgetState extends State<ExampleWidget> {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new TextField(
          controller: _controller,
          decoration: new InputDecoration(
            hintText: 'Type something',
          ),
        ),
      ],
    );
  }
}