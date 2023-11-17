class TravelModel {
  String name;
  String location;
  String image;
  String distance;
  String temp;
  String rating;
  String price;
  String description;
  TravelModel({
    required this.name,
    required this.location,
    required this.image,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.price,
    required this.description,
  });
}

List<TravelModel> travelList = [
  TravelModel(
      name: "New York",
      location: "US - NewYork",
      image: "assets/images/newyork.jpg",
      distance: "7",
      temp: "30",
      rating: "5",
      price: "2000",
      description:
          'descriptionddddddddddddddddddddddd descriptiondescriptiondescriptiondescriptiondesc/riptiondescriptiondescriptiondescriptiondescription'),
  TravelModel(
      name: "Tehran",
      location: "Iran - Tehran",
      image: "assets/images/tehran.jpg",
      distance: "5",
      temp: "28",
      rating: "4.5",
      price: "200",
      description:
          'description fffffffffffffffdescewrtfgewrfwrfewsfcrhgrjdsrjriptiondescriptiondescriptiondescriptiondesc/riptiondescriptiondescriptiondescriptiondescription'),
  TravelModel(
      name: "Rome",
      location: "Italy - Rome",
      image: "assets/images/rome.jpg",
      distance: "25",
      temp: "20",
      rating: "4.8",
      price: "1070",
      description:
          'descrtrhsyrytdssrsiptiasdadsasdasdasdasdotgergesrn descriptiondescriptiondescriptiondescriptiondesc/riptiondescriptiondescriptiondescriptiondescription'),
  TravelModel(
      name: "Paris",
      location: "France - Paris",
      image: "assets/images/paris.jpg",
      distance: "6",
      temp: "25",
      price: "2100",
      rating: "5",
      description:
          'descrieryhrtyption asdadasdsadescriptafwefwefwfiondescriperageftiondescriptiondescriptiondesc/riptiondescriptiondescriptiondescriptiondescription'),
];
