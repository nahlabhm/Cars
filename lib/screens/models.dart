class Product {
  final String productName;
  final String productImageUrl;
  final String Price;
  final String auto;
  final String seats;

  const Product({
    required this.productName,
    required this.productImageUrl,
    required this.Price,
    required this.auto,
    required this.seats,
  });
}

class Category {
  
  final String thumbnailImage;

  const Category({

    required this.thumbnailImage,
  });
}

// list of categories
final categories = [
  const Category(
    thumbnailImage:"assets/audi-11.svg"
  ),
  const Category(
    thumbnailImage:"assets/bmw-logo.svg"
  ),
  const Category(

    thumbnailImage:"assets/bugatti-2.svg"
  ),
   const Category(
    thumbnailImage:"assets/jaguar-cars.svg"
  ),
     const Category(
    thumbnailImage:"assets/toyota.svg"
  ),
   const Category(
    thumbnailImage:"assets/audi-11.svg"
  ),
  const Category(
    thumbnailImage:"assets/bmw-logo.svg"
  ),
  const Category(

    thumbnailImage:"assets/bugatti-2.svg"
  ),
   const Category(
    thumbnailImage:"assets/jaguar-cars.svg"
  ),
     const Category(
    thumbnailImage:"assets/toyota.svg"
  ),
 
];

// list of products
final products = [
  const Product(
    productName: "Ferrari 458 Speciale",
    productImageUrl:
"assets/9af860ae4437321387a5928d5c741126.jpg"   ,
   Price: "250",
    auto: "Manual",
    seats: "2",
  ),

 
];
