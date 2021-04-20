class Pokemon {
  Pokemon({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  Pokemon.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        url = json['url'];
}
