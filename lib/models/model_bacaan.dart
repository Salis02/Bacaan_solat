class ModelBacaan {
  int? id;
  String? name, arabic, latin, terjemahan;

  ModelBacaan(this.id, this.name, this.arabic, this.latin, this.terjemahan);

  ModelBacaan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    arabic = json['arabic'];
    latin = json['latin'];
    terjemahan = json['terjemahan'];
  }
}
