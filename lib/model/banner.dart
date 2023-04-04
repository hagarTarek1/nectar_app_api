class BannerModel {
  String? imageUrl;
  String? title;
  String? discount;

  BannerModel({this.title, this.imageUrl, this.discount});
}

List<BannerModel> banners = [
  BannerModel(
    title: 'Vegtables',
    discount: '40',
    imageUrl:
        'https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg',
  ),
  BannerModel(
    title: 'Fruits',
    discount: '20',
    imageUrl:
    'https://healthnewshub.org/wp-content/uploads/2022/10/Fruit.jpg',
  ),
  BannerModel(
    title: 'Plantes',
    discount: '70',
    imageUrl:
    'https://asianinspirations.com.au/wp-content/uploads/2021/01/10-Most-Expensive-Asian-Fruits_00-Feat-Img-940x627.jpg',
  ),
];
