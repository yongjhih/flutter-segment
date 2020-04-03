import 'dart:io';

import 'package:meta/meta.dart';
import 'package:flutter_segment/src/segment_platform_interface.dart';

export 'package:flutter_segment/src/segment_observer.dart';
export 'package:flutter_segment/src/segment_default_options.dart';

class Segment {
  static SegmentPlatform get _segment => SegmentPlatform.instance;

  static Future<void> identify({
    @required userId,
    Map<String, dynamic> traits,
    Map<String, dynamic> options,
  }) {
    return _segment.identify(
      userId: userId,
      traits: traits,
      options: options,
    );
  }

  static Future<void> track({
    @required String eventName,
    Map<String, dynamic> properties,
    Map<String, dynamic> options,
  }) {
    return _segment.track(
      eventName: eventName,
      properties: properties,
      options: options,
    );
  }

  static Future<void> screen({
    @required String screenName,
    Map<String, dynamic> properties,
    Map<String, dynamic> options,
  }) {
    return _segment.screen(
      screenName: screenName,
      properties: properties,
      options: options,
    );
  }

  static Future<void> group({
    @required String groupId,
    Map<String, dynamic> traits,
    Map<String, dynamic> options,
  }) {
    return _segment.group(
      groupId: groupId,
      traits: traits,
      options: options,
    );
  }

  static Future<void> alias({
    @required String alias,
    Map<String, dynamic> options,
  }) {
    return _segment.alias(
      alias: alias,
      options: options,
    );
  }

  static Future<String> get getAnonymousId {
    return _segment.getAnonymousId;
  }

  static Future<void> reset() {
    return _segment.reset();
  }

  static Future<void> disable() {
    return _segment.disable();
  }

  static Future<void> enable() {
    return _segment.enable();
  }

  static Future<void> debug(bool enabled) {
    if (Platform.isAndroid) {
      throw Exception(
        'Debug flag cannot be dynamically set on Android.\n'
        'Add to AndroidManifest and avoid calling this method when Platform.isAndroid.'
      );
    }

    return _segment.debug(enabled);
  }

  static Future<void> setContext(Map<String, dynamic> context) {
    return _segment.setContext(context);
  }

  static const String AVATAR_KEY = "avatar";
  static const String CREATED_AT_KEY = "createdAt";
  static const String DESCRIPTION_KEY = "description";
  static const String EMAIL_KEY = "email";
  static const String FAX_KEY = "fax";
  static const String ANONYMOUS_ID_KEY = "anonymousId";
  static const String USER_ID_KEY = "userId";
  static const String NAME_KEY = "name";
  static const String PHONE_KEY = "phone";
  static const String WEBSITE_KEY = "website";
  // For Identify Calls
  static const String AGE_KEY = "age";
  static const String BIRTHDAY_KEY = "birthday";
  static const String FIRST_NAME_KEY = "firstName";
  static const String GENDER_KEY = "gender";
  static const String LAST_NAME_KEY = "lastName";
  static const String TITLE_KEY = "title";
  static const String USERNAME_KEY = "username";
  // For Group calls
  static const String EMPLOYEES_KEY = "employees";
  static const String INDUSTRY_KEY = "industry";
  // Address
  static const String ADDRESS_KEY = "address";

  static const String ADDRESS_CITY_KEY = "city";
  static const String ADDRESS_COUNTRY_KEY = "country";
  static const String ADDRESS_POSTAL_CODE_KEY = "postalCode";
  static const String ADDRESS_STATE_KEY = "state";
  static const String ADDRESS_STREET_KEY = "street";
}
