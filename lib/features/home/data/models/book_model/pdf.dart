/// isAvailable : true
/// acsTokenLink : "http://books.google.com/books/download/Fundamentals_of_Computers_and_Programmin-sample-pdf.acsm?id=JKZ2DwAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"

class Pdf {
  Pdf({
    bool? isAvailable,
    String? acsTokenLink,}){
    _isAvailable = isAvailable;
    _acsTokenLink = acsTokenLink;
  }

  Pdf.fromJson(dynamic json) {
    _isAvailable = json['isAvailable'];
    _acsTokenLink = json['acsTokenLink'];
  }
  bool? _isAvailable;
  String? _acsTokenLink;

  bool? get isAvailable => _isAvailable;
  String? get acsTokenLink => _acsTokenLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = _isAvailable;
    map['acsTokenLink'] = _acsTokenLink;
    return map;
  }

}