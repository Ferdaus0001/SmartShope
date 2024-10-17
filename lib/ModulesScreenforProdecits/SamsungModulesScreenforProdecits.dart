class Samsung{
  String? ImagePath;
  String? TitleText;
  double? applePrices;
  bool? isTraning;
  Samsung({required this.ImagePath,required this.applePrices ,required this.TitleText,required this.isTraning});
}


List<Samsung> sansung = [
  Samsung(ImagePath: 'assets/image/3pl3B9GkQgxBduKQOmhMHDXs8iYptLXZz837DUJ1.png', applePrices : 350000, TitleText: 'Samsung Galaxy A34 5G', isTraning: true),
  Samsung(ImagePath: 'assets/image/a73-160-web-fel.png', applePrices : 44000 , TitleText: 'SamSung Galaxy A35 5G', isTraning: true),
  Samsung(ImagePath: 'assets/image/samsung3.jpg',  applePrices: 22000, TitleText: 'Samsung  Galaxy A32', isTraning: true),
  Samsung(ImagePath: 'assets/image/a54-black.png', applePrices : 50000, TitleText: 'SamSung Galaxy A50 ', isTraning: true),
  Samsung(ImagePath: 'assets/image/RRD0KhpKg0v2hU5hMHEXoF1stSnL9uAdGI4X9Fzh.webp', applePrices: 13000, TitleText: 'SamSung Galaxy M55', isTraning: true),

];