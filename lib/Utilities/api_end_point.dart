import 'package:e_commerce_flutter/Utilities/server_model.dart';

class APIEndPoint{

 APIEndPoint._();


 static const String baseUrl = "https://api.themoviedb.org";

 static final ServerModel _dotNetApiServer = ServerModel(serverIsSecured: true, host: "themoviedb.org", apiPrefix: "api");

 static String get _dotNetBaseUrl => _dotNetApiServer.baseUrl;


 // -------------------------- apis -------------------------------

 static String  listData(String type) => "$_dotNetBaseUrl/3/movie/$type?api_key=426bff346dfb35a5c824f8c3acddcc15";


}