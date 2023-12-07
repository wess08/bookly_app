import 'access_info.dart';
import 'sale_info.dart';
import 'volume_info.dart';

/// kind : "books#volume"
/// id : "JKZ2DwAAQBAJ"
/// etag : "XwMjVpFYurI"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/JKZ2DwAAQBAJ"
/// volumeInfo : {"title":"Fundamentals of Computers and Programming: An Arabic Textbook","authors":["Jamil Ahmed Itmazi"],"publisher":"Lulu.com","industryIdentifiers":[{"type":"ISBN_13","identifier":"9780359198979"},{"type":"ISBN_10","identifier":"035919897X"}],"readingModes":{"text":false,"image":true},"pageCount":280,"printType":"BOOK","maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.1.0.0.preview.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=JKZ2DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=JKZ2DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"ar","previewLink":"http://books.google.com/books?id=JKZ2DwAAQBAJ&pg=PT62&dq=programming&hl=&cd=1&source=gbs_api","infoLink":"http://books.google.com/books?id=JKZ2DwAAQBAJ&dq=programming&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/Fundamentals_of_Computers_and_Programmin.html?hl=&id=JKZ2DwAAQBAJ"}
/// saleInfo : {"country":"TN","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"TN","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false},"pdf":{"isAvailable":true,"acsTokenLink":"http://books.google.com/books/download/Fundamentals_of_Computers_and_Programmin-sample-pdf.acsm?id=JKZ2DwAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"webReaderLink":"http://play.google.com/books/reader?id=JKZ2DwAAQBAJ&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"... (<b>Programming</b> Language Compilers): ولا يتم الحديث عن المترجمات دون توضيح لغات <b>البرمجة</b>. تة لغات <b>البرمجة</b> (Languages <b>Programming</b>): يتم تطوير برامج الحاسوب باستخدام لغات <b>البرمجة</b>، والتي بدورها هي أيضاً برامج حاسوب طورت باستخدام لغات برمجة&nbsp;..."}

class BookModel {
  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    required this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
  });

  BookModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = VolumeInfo.fromJson(json['volumeInfo']);
    saleInfo =
        json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
  }

  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  late VolumeInfo volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    map['volumeInfo'] = volumeInfo.toJson();
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    return map;
  }
}
