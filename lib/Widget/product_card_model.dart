class ProductCardModel {
  final String imgUrl;
  final String title;
  final String desc;
  final double rate;
  final int purchages;

  const ProductCardModel({
    required this.imgUrl,
    required this.desc,
    required this.purchages,
    required this.rate,
    required this.title,
  });
}

const products = [
  ProductCardModel(
      imgUrl: "assets/images/Coffee2.png",
      desc: "Espresso, Steamed Milk",
      purchages: 458,
      rate: 4.9,
      title: 'Hot Cappuccino'),
  ProductCardModel(
      imgUrl: "assets/images/Coffee3.png",
      desc: "Espresso, Steamed Milk",
      purchages: 458,
      rate: 4.9,
      title: 'Hot Cappuccino'),
  ProductCardModel(
      imgUrl: "assets/images/Coffee4.png",
      desc: "Espresso, Steamed Milk",
      purchages: 458,
      rate: 4.9,
      title: 'Hot Cappuccino'),
];
