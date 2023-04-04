class Ecommerce {
  int? id;
  double? price;
  String? title, description, category, image;
  Rating? rating;

  Ecommerce(
      {this.id,
      this.price,
      this.title,
      this.description,
      this.category,
      this.rating,
      this.image});

  Ecommerce factory(Map m1) {
    id = m1['id'];
    price = m1['price'];
    title = m1['title'];
    description = m1['description'];
    category = m1['category'];
    image = m1['image'];

    rating = Rating().factory(m1);

    Ecommerce e1 = Ecommerce(
        description: description,
        title: title,
        id: id,
        image: image,
        category: category,
        price: price,
        rating: rating);
    return e1;
  }
}

class Rating {
  int? count;
  double? rate;

  Rating({this.count, this.rate});

  Rating factory(Map m1) {
    count = m1['count'];
    rate = m1['rate'];

    Rating r1 = Rating(count: count, rate: rate);
    return r1;
  }
}
