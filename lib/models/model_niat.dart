class ModelNiat {
  int? id;
  String? name, arabic, latin, terjemahan;

  ModelNiat(this.id, this.arabic, this.latin, this.name, this.terjemahan);

  ModelNiat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    arabic = json['arabic'];
    latin = json['latin'];
    terjemahan = json['terjemahan'];
  }
}
