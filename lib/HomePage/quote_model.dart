class Quote {
  String? quote;
  String? author;
  String? urlToImage;

  Quote(
    this.quote,
    this.author,
    this.urlToImage,
  );
  static List<Quote> quoteData = [
    Quote(
      "There is a crack in everything, that's how the light gets in.",
      "--Leonard Cohen",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2NCpGtceUqf4lRtyg6xEHAJhXrYxR9r-akaP_64IERD5i02HS1EmqwZn1MCZGqYm-xm4&usqp=CAU",
    ),
    Quote(
      "Not until we are lost do we begin to understand ourselves.",
      "--Henry David Thoreau",
      "https://img.freepik.com/free-vector/abstract-blue-geometric-shapes-background_1035-17545.jpg?w=2000",
    ),
    Quote(
      "Happiness can be found even in the darkest of times, if one only remembers to turn on the light.",
      "--Albus Dumbledore",
      "https://static.vecteezy.com/system/resources/previews/001/984/880/original/abstract-colorful-geometric-overlapping-background-and-texture-free-vector.jpg",
    ),
    Quote(
      "There is hope, even when your brain tells you there isn't.",
      "--John Green",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTij6LPfNal6876gGK1LN0QPVwF6GPVQbZwO03cZ1L5qwdUbAETjmQspTkyExVYq3T6ynE&usqp=CAU",
    ),
  ];
}
