import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetObjectsCall {
  static Future<ApiCallResponse> call({
    String? constraints = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getObjects',
      apiUrl: 'https://agent360.bubbleapps.io/api/1.1/obj/Object',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json',
      },
      params: {
        'api_token': "1a14a379433e808a8135d044c224a56b",
        'constraints': constraints,
      },
      returnBody: true,
    );
  }

  static dynamic listObjects(dynamic response) => getJsonField(
        response,
        r'''$.response.results''',
        true,
      );
  static dynamic date(dynamic response) => getJsonField(
        response,
        r'''$.response.results[0]['Created Date']''',
        true,
      );
}

class GetScenesCall {
  static Future<ApiCallResponse> call({
    String? constraints = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getScenes',
      apiUrl: 'https://agent360.bubbleapps.io/api/1.1/obj/Scene',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json; charset=UTF-8',
      },
      params: {
        'api_token': "1a14a379433e808a8135d044c224a56b",
        'constraints': constraints,
      },
      returnBody: true,
    );
  }

  static dynamic scenes(dynamic response) => getJsonField(
        response,
        r'''$.response.results''',
        true,
      );
}

class AuthCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'auth',
      apiUrl: 'https://agent360.vortexo.ru/api/1.1/wf/auth',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': "1a14a379433e808a8135d044c224a56b",
        'email': email,
        'password': password,
      },
      returnBody: true,
    );
  }

  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl:
          'https://agent360.bubbleapps.io/api/1.1/wf/login?api_token=1a14a379433e808a8135d044c224a56b',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
}

class CreateObjectCall {
  static Future<ApiCallResponse> call({
    String? objectCreator = '',
    String? objectInfo = '',
    String? objectCreatorId = '',
    String? objectName = '',
    String? objectCover = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'createObject',
      apiUrl:
          'https://agent360.bubbleapps.io/api/1.1/obj/Object?api_token=1a14a379433e808a8135d044c224a56b',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'objectCreator': objectCreator,
        'objectInfo': objectInfo,
        'objectCreatorId': objectCreatorId,
        'objectName': objectName,
        'objectCover': objectCover,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}

class CreateSceneCall {
  static Future<ApiCallResponse> call({
    String? sceneImage = '',
    String? sceneName = '',
    String? sceneObject = '',
    int? sceneOrder,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'createScene',
      apiUrl:
          'https://agent360.bubbleapps.io/api/1.1/obj/Scene?api_token=1a14a379433e808a8135d044c224a56b',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'sceneImage': sceneImage,
        'sceneName': sceneName,
        'sceneObject': sceneObject,
        'sceneOrder': sceneOrder,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}

class AddObjectByCompanyCall {
  static Future<ApiCallResponse> call({
    String? objectId = '',
    String? userId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'addObjectByCompany',
      apiUrl:
          'https://agent360.bubbleapps.io/api/1.1/wf/object_to_company?api_token=1a14a379433e808a8135d044c224a56b',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'objectId': objectId,
        'userId': userId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}

class AddSceneToObjectCall {
  static Future<ApiCallResponse> call({
    String? objectId = '',
    String? sceneId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'addSceneToObject',
      apiUrl:
          'https://agent360.bubbleapps.io/api/1.1/wf/scene_to_object?api_token=1a14a379433e808a8135d044c224a56b',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'objectId': objectId,
        'sceneId': sceneId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}

class RegisterCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'register',
      apiUrl:
          'https://agent360.bubbleapps.io/api/1.1/wf/register?api_token=1a14a379433e808a8135d044c224a56b',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'name': name,
        'email': email,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}
