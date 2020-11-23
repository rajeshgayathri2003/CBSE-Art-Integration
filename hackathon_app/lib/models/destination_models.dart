import 'package:hackathon_app/models/activity_models.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/aipan2.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/uk1.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/uk2.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/almora.jpg',
    city: 'Almora',
    country: 'Almora',
    description: 'Fairy tale hamlets, picturesque views and divine temples',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/valleyofflowers.jpg',
    city: 'Valley of\n Flowers',
    country: 'Nanda Devi',
    description:
        'Visit this UNESCO World Heritage Site and experience the best of nature ',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/jimcorbett.jpg',
    city: 'Jim Corbett \nNational Park',
    country: 'Nainital',
    description:
        'Visit the Jim Corbett National and witness wildlife in action.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/haridwar.jpg',
    city: 'Haridwar',
    country: 'Haridwar',
    description:
        'The epitome of Indian culture. Witness the Kumbh Mela in action!',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/rishikesh.jpg',
    city: 'Rishikesh',
    country: 'Rishikesh',
    description:
        'Experience tranquility and divinity by the banks of river Ganges',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/nainital.jpg',
    city: 'Nainital',
    country: 'Nainital',
    description: 'Visit the beautiful hill station of India',
    activities: activities,
  ),
];
