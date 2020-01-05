import 'package:devmod_app/app/app_controller.dart';
import 'package:devmod_app/app/app_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    var appController = AppModule.to.bloc<AppController>();

    return Observer(
      builder: (context) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              builder: (context) => Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Theme.of(context).bottomAppBarColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Configuraçoes:',
                          style: Theme.of(context).textTheme.title,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Dark mode:'),
                          Switch(
                            value: appController.themeIsDark,
                            onChanged: (dark) {
                              appController.setThemeMode(
                                  dark ? ThemeMode.dark : ThemeMode.light);
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          backgroundColor: Theme.of(context).bottomAppBarColor,
          child: Icon(
            Icons.settings,
            color: Theme.of(context).primaryColor,
          ),
        ),
        body: Center(child: Text('Sobre')),
      ),
    );
  }
}
