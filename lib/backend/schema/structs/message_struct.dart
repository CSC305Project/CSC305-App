// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Sends message to user on screen
class MessageStruct extends FFFirebaseStruct {
  MessageStruct({
    /// Tell user if purchase is smart or not
    String? message,

    /// Select Role for output
    Role? chatRole,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _message = message,
        _chatRole = chatRole,
        super(firestoreUtilData);

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "chatRole" field.
  Role? _chatRole;
  Role? get chatRole => _chatRole;
  set chatRole(Role? val) => _chatRole = val;

  bool hasChatRole() => _chatRole != null;

  static MessageStruct fromMap(Map<String, dynamic> data) => MessageStruct(
        message: data['message'] as String?,
        chatRole: data['chatRole'] is Role
            ? data['chatRole']
            : deserializeEnum<Role>(data['chatRole']),
      );

  static MessageStruct? maybeFromMap(dynamic data) =>
      data is Map ? MessageStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'chatRole': _chatRole?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'chatRole': serializeParam(
          _chatRole,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static MessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessageStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        chatRole: deserializeParam<Role>(
          data['chatRole'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'MessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessageStruct &&
        message == other.message &&
        chatRole == other.chatRole;
  }

  @override
  int get hashCode => const ListEquality().hash([message, chatRole]);
}

MessageStruct createMessageStruct({
  String? message,
  Role? chatRole,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MessageStruct(
      message: message,
      chatRole: chatRole,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MessageStruct? updateMessageStruct(
  MessageStruct? messageStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    messageStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMessageStructData(
  Map<String, dynamic> firestoreData,
  MessageStruct? messageStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (messageStruct == null) {
    return;
  }
  if (messageStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && messageStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final messageStructData =
      getMessageFirestoreData(messageStruct, forFieldValue);
  final nestedData =
      messageStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = messageStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMessageFirestoreData(
  MessageStruct? messageStruct, [
  bool forFieldValue = false,
]) {
  if (messageStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(messageStruct.toMap());

  // Add any Firestore field values
  messageStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMessageListFirestoreData(
  List<MessageStruct>? messageStructs,
) =>
    messageStructs?.map((e) => getMessageFirestoreData(e, true)).toList() ?? [];
