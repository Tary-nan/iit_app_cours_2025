class CategoryModel {
  // propriete
  final String title;
  final String image;
  final String description;
  final List<Chapitre> chapitres;

  CategoryModel(
      {required this.title,
      required this.image,
      required this.description,
      required this.chapitres});
}

enum Status { terminer, encours, initial }

class Chapitre {
  final String title;
  final String duree;
  final String url;
  final Status statut;

  Chapitre(
      {required this.title,
      required this.duree,
      required this.url,
      required this.statut});
}
