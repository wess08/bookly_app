/// textSnippet : "... (<b>Programming</b> Language Compilers): ولا يتم الحديث عن المترجمات دون توضيح لغات <b>البرمجة</b>. تة لغات <b>البرمجة</b> (Languages <b>Programming</b>): يتم تطوير برامج الحاسوب باستخدام لغات <b>البرمجة</b>، والتي بدورها هي أيضاً برامج حاسوب طورت باستخدام لغات برمجة&nbsp;..."

class SearchInfo {
  SearchInfo({
    this.textSnippet,
  });

  SearchInfo.fromJson(dynamic json) {
    textSnippet = json['textSnippet'];
  }

  String? textSnippet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = textSnippet;
    return map;
  }
}
