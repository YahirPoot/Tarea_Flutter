import 'package:flutter/material.dart';
import 'package:flutter_application_3/presentation/screens/networking/firstActivite/album_fetch.dart';
import 'package:flutter_application_3/presentation/screens/networking/fourthActivite/update_data_over_the_internet.dart';
import 'package:flutter_application_3/presentation/screens/networking/secondActivite/make_authenticate_request.dart';
import 'package:flutter_application_3/presentation/screens/networking/sevenActivite/parse_json.dart';
import 'package:flutter_application_3/presentation/screens/networking/threeActivite/send_data_to_internet.dart';

Map<String, WidgetBuilder> getRoutesApp() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const AlbumActivite(),
    '/actividad2': (BuildContext context) => const AlbumActivite2(),
    '/actividad3': (BuildContext context) => const SendDataToInternet(),
    '/actividad4': (BuildContext context) =>  const UpdateDataOverInternet(),
    // '/actividad6': (BuildContext context) => 
    '/actividad7': (BuildContext context) => const ParseJsonInTheBackground(),
  };
}
