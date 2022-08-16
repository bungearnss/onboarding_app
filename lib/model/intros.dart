class Intros {
  final String img;
  final String title;
  final String subTitle;

  Intros({
    required this.img,
    required this.title,
    required this.subTitle,
  });
}

List<Intros> introItemList = [
  Intros(
    img: "assets/3285676_1.jpg",
    title: "Ask a taxi\non the app",
    subTitle:
        "Huge drivers network\nhelps you find comfortable.\nsafe and cheap ride",
  ),
  Intros(
    img: "assets/3285676_2.jpg",
    title: "Get a taxi in\nless than 5 min",
    subTitle:
        "Taxx is new way for\npeople to find the cheap ride or\nmake more for drivers",
  ),
  Intros(
    img: "assets/3285676_3.jpg",
    title: "Make Up to 5฿ / min",
    subTitle:
        "With increased Prime Time\npricing during peak hours.\nyou make more with Taxx",
  ),
];
