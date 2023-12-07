// Only parsing the required parameter to make it prettier,
// as there were many parameters in the JSON provided that all were not neeeded.
class SausageModel {
    String? id;
    String? name;
    double? price;
    String? shortDescription;
    String? fullDescription;
    String? imageUri;

    SausageModel({this.id, this.name, this.price, this.shortDescription, this.fullDescription, this.imageUri}); 

    SausageModel.fromJson(Map<String, dynamic> json) {
        id = json['articleCode'];
        price = json['eatInPrice'];
        name = json['articleName'];
        shortDescription = json['internalDescription'];
        fullDescription = json['customerDescription'];
        imageUri = json['imageUri'];
    }

}


