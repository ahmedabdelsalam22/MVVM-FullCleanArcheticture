import 'package:flutter_advanced/app/extensions.dart';
import 'package:flutter_advanced/data/response/responses.dart';
import 'package:flutter_advanced/domain/model/models.dart';

import '../../app/constants.dart';

extension CustomerResponseMapper on CustomerResponse {
  Customer toDomain() {
    return Customer(
        id.orEmpty() ?? Constants.empty,
        name.orEmpty() ?? Constants.empty,
        numOfNotifications.orZero() ?? Constants.zero);
  }
}

extension ContactsResponseMapper on ContactsResponse? {
  Contacts toDomain() {
    return Contacts(
        this?.phone.orEmpty() ?? Constants.empty,
        this?.email.orEmpty() ?? Constants.empty,
        this?.link.orEmpty() ?? Constants.empty);
  }
}
