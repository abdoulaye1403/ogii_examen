import 'package:cloud_firestore/cloud_firestore.dart';

class Document {
  String? dcmtID, dcmtUserID, dcmtUserName, dcmtUserLieuNaiss;
  Timestamp? dcmtTimestamp;
  String? dcmtUserDateNaiss;

  Document({
    this.dcmtID,
    this.dcmtUserID,
    this.dcmtUserName,
    this.dcmtUserLieuNaiss,
    this.dcmtTimestamp,
    this.dcmtUserDateNaiss,
  });
  factory Document.fromMap(map) {
    return Document(
      dcmtID: map['dcmtID'],
      dcmtUserID: map['uid'],
      dcmtUserName: map['dcmtUserName'],
      dcmtUserLieuNaiss: map['dcmtUserLieuNaiss'],
      dcmtUserDateNaiss: map['dcmtUserDateNaiss'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'dcmtID': dcmtID,
      'uid': dcmtUserID,
      'dcmtUserName': dcmtUserName,
      'dcmtUserLieuNaiss': dcmtUserLieuNaiss,
      'dcmtUserDateNaiss': dcmtUserDateNaiss,
      'dcmtTimestamp': FieldValue.serverTimestamp(),
    };
  }
}
