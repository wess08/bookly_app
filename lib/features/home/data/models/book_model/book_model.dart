import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
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
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    VolumeInfo? volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,}){
    _kind = kind;
    _id = id;
    _etag = etag;
    _selfLink = selfLink;
    _volumeInfo = volumeInfo;
    _saleInfo = saleInfo;
    _accessInfo = accessInfo;
    _searchInfo = searchInfo;
  }

  BookModel.fromJson(dynamic json) {
    _kind = json['kind'];
    _id = json['id'];
    _etag = json['etag'];
    _selfLink = json['selfLink'];
    _volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    _saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    _accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    _searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
  }
  String? _kind;
  String? _id;
  String? _etag;
  String? _selfLink;
  VolumeInfo? _volumeInfo;
  SaleInfo? _saleInfo;
  AccessInfo? _accessInfo;
  SearchInfo? _searchInfo;

  String? get kind => _kind;
  String? get id => _id;
  String? get etag => _etag;
  String? get selfLink => _selfLink;
  VolumeInfo? get volumeInfo => _volumeInfo;
  SaleInfo? get saleInfo => _saleInfo;
  AccessInfo? get accessInfo => _accessInfo;
  SearchInfo? get searchInfo => _searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = _kind;
    map['id'] = _id;
    map['etag'] = _etag;
    map['selfLink'] = _selfLink;
    if (_volumeInfo != null) {
      map['volumeInfo'] = _volumeInfo?.toJson();
    }
    if (_saleInfo != null) {
      map['saleInfo'] = _saleInfo?.toJson();
    }
    if (_accessInfo != null) {
      map['accessInfo'] = _accessInfo?.toJson();
    }
    if (_searchInfo != null) {
      map['searchInfo'] = _searchInfo?.toJson();
    }
    return map;
  }

}