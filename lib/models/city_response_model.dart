class CityResponseModel {
  String? name;
  LocalNames? localNames;
  double? lat;
  double? lon;
  String? country;
  String? state;

  CityResponseModel(
      {this.name,
        this.localNames,
        this.lat,
        this.lon,
        this.country,
        this.state});

  CityResponseModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    localNames = json['local_names'] != null
        ? LocalNames.fromJson(json['local_names'])
        : null;
    lat = json['lat'];
    lon = json['lon'];
    country = json['country'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    if (this.localNames != null) {
      data['local_names'] = this.localNames!.toJson();
    }
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['country'] = this.country;
    data['state'] = this.state;
    return data;
  }
}

class LocalNames {
  String? kn;
  String? de;
  String? ja;
  String? sk;
  String? lt;
  String? fr;
  String? my;
  String? et;
  String? pl;
  String? es;
  String? ascii;
  String? zh;
  String? eu;
  String? featureName;
  String? vi;
  String? hi;
  String? en;
  String? it;
  String? cs;
  String? ko;
  String? ku;
  String? uk;
  String? ru;
  String? oc;
  String? da;

  LocalNames(
      {this.kn,
        this.de,
        this.ja,
        this.sk,
        this.lt,
        this.fr,
        this.my,
        this.et,
        this.pl,
        this.es,
        this.ascii,
        this.zh,
        this.eu,
        this.featureName,
        this.vi,
        this.hi,
        this.en,
        this.it,
        this.cs,
        this.ko,
        this.ku,
        this.uk,
        this.ru,
        this.oc,
        this.da});

  LocalNames.fromJson(Map<String, dynamic> json) {
    kn = json['kn'];
    de = json['de'];
    ja = json['ja'];
    sk = json['sk'];
    lt = json['lt'];
    fr = json['fr'];
    my = json['my'];
    et = json['et'];
    pl = json['pl'];
    es = json['es'];
    ascii = json['ascii'];
    zh = json['zh'];
    eu = json['eu'];
    featureName = json['feature_name'];
    vi = json['vi'];
    hi = json['hi'];
    en = json['en'];
    it = json['it'];
    cs = json['cs'];
    ko = json['ko'];
    ku = json['ku'];
    uk = json['uk'];
    ru = json['ru'];
    oc = json['oc'];
    da = json['da'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['kn'] = this.kn;
    data['de'] = this.de;
    data['ja'] = this.ja;
    data['sk'] = this.sk;
    data['lt'] = this.lt;
    data['fr'] = this.fr;
    data['my'] = this.my;
    data['et'] = this.et;
    data['pl'] = this.pl;
    data['es'] = this.es;
    data['ascii'] = this.ascii;
    data['zh'] = this.zh;
    data['eu'] = this.eu;
    data['feature_name'] = this.featureName;
    data['vi'] = this.vi;
    data['hi'] = this.hi;
    data['en'] = this.en;
    data['it'] = this.it;
    data['cs'] = this.cs;
    data['ko'] = this.ko;
    data['ku'] = this.ku;
    data['uk'] = this.uk;
    data['ru'] = this.ru;
    data['oc'] = this.oc;
    data['da'] = this.da;
    return data;
  }
}