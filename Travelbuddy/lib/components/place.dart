class Place {
  final String name;
  final String asset;
  final String location;
  final double rating;
  final int price;
  final String headline;
  final String desc;
  final List<String> testimonials;

  Place({
      required this.name,
      required this.asset,
      required this.location,
      required this.rating,
      required this.price,
      required this.headline,
      required this.desc,
      required this.testimonials});
}

final popularDestionation = [
  Place(
    name: "Penguin House",
    asset: "assets/penguin_house.jpeg",
    location: "Nanyuki",
    rating: 4.0,
    price: 19,
    headline: "Great ambience and perfect hideout especially for a family setup",
    desc:
        "Located just at the steeps of Mount Kenya, Penguin house aims at providing a cool and memorable environment for the best experience",
    testimonials: [
      "assets/profile_1.jpeg",
      "assets/profile_2.jpeg",
      "assets/profile_3.jpeg",
      "assets/profile_4.jpeg",
    ],
  ),
  Place(
    name: "Fairmont Hotel",
    asset: "assets/fairmont_hotel.jpeg",
    location: "Maasai Mara",
    rating: 4.4,
    price: 1599,
    headline: "Great ambience and perfect hideout especially for a family setup",
    desc:
        "Beautiful hotel with amazing river front side views, excellent staff,Accomodation 5/5 the rooms are beautiful with river front views and you can see crocodiles and hippos right from your balcony !",
    testimonials: [
      "assets/profile_1.jpeg",
      "assets/profile_2.jpeg",
      "assets/profile_3.jpeg",
      "assets/profile_4.jpeg",
    ],
  ),
  Place(
    name: "Esiankiki Resort",
    asset: "assets/esiankiki_resort.jpeg",
    location: "Timau",
    rating: 4.5,
    price: 49,
    headline: "One of the Best Place on Earth",
    desc:
        "The Eternal City is more like a giant, living museum. Visitors are immersed in and surrounded by thousands of years of history. It's a relatively compact city, and a three-day itinerary gets you to the minimum number of must-see places.",
    testimonials: [
      "assets/profile_1.jpeg",
      "assets/profile_2.jpeg",
      "assets/profile_3.jpeg",
      "assets/profile_4.jpeg",
    ],
  ),
   Place(
    name: "Esiankiki Resort",
    asset: "assets/olepangi_farm.jpeg",
    location: "Italy",
    rating: 4.5,
    price: 39,
    headline: "One of the Best Place on Earth",
    desc:
        "A very hospitable place and deserves the right to be where it is. Good for outings and outdoor meetings",
    testimonials: [
      "assets/profile_1.jpeg",
      "assets/profile_2.jpeg",
      "assets/profile_3.jpeg",
      "assets/profile_4.jpeg",
    ],
  ),
  Place(
    name: "Mount Kenya villas",
    asset: "assets/mount_kenya_villas.jpeg",
    location: "Timauu",
    rating: 4.5,
    price: 39,
    headline: "One of the Best Place on Earth",
    desc:
        "This Hawaiian island offers a wide range of experiences for visitors. You can surf, enjoy a meal on the beach at a five-star luxury resort in Wailea, ride a horse across a dormant volcano in Haleakala National Park, or hike through a rainforest in the West Maui Mountains. The natural scenery is amazing-it's truly one of the most beautiful islands in the world.",
    testimonials: [
      "assets/profile_1.jpeg",
      "assets/profile_2.jpeg",
      "assets/profile_3.jpeg",
      "assets/profile_4.jpeg",
    ],
  ),
];

final specialForYou = popularDestionation.reversed.toList();