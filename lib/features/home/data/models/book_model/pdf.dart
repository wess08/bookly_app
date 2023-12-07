/// isAvailable : true
/// acsTokenLink : "http://books.google.com/books/download/Fundamentals_of_Computers_and_Programmin-sample-pdf.acsm?id=JKZ2DwAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"

class Pdf {
  Pdf({
    this.isAvailable,
    this.acsTokenLink,});

  Pdf.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
    acsTokenLink = json['acsTokenLink'];
  }
  bool? isAvailable;
  String? acsTokenLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    map['acsTokenLink'] = acsTokenLink;
    return map;
  }

}