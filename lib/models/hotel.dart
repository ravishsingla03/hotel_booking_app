class Hotel {
  String imageUrl;
  String title;
  String description;
  String price;
  double rating;
  String location;

  Hotel(
      {required this.description,
      required this.imageUrl,
      required this.price,
      required this.rating,
      required this.title,
      required this.location});
}

final List<Hotel> Shimla = [
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/p/AF1QipOr41szBlGaKietUcEWZIV6KDtU7LiRfU0TiDWz=w296-h202-n-k-rw-no-v1',
      title: 'Hotel Best Nest',
      description: ' Beolia, Shimla',
      price: '₹1415',
      rating: 4.8,
      location:
          'https://www.google.com/maps/place/Hotel+Best+Nest/@31.0545261,77.1789862,17z/data=!3m1!4b1!4m9!3m8!1s0x39057f42900d8111:0x818faf884ac0e6f8!5m2!4m1!1i2!8m2!3d31.0545261!4d77.1811749!16s%2Fg%2F11f5bncytg?hl=en-GB'),
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/p/AF1QipOPcIkhOI8VcQ5C49NPScViSbM8nbl9qhpTr5Jc=w296-h202-n-k-rw-no-v1',
      title: 'Shimla Nature Ville',
      description: 'Summer Hill, Shimla',
      price: '₹1183',
      rating: 3.8,
      location:
          "https://www.google.com/maps/place/Shimla+Nature+Ville/@31.1141168,77.1281988,17z/data=!3m1!4b1!4m9!3m8!1s0x3905790a310ffa57:0x3eddb14bab7ecd53!5m2!4m1!1i2!8m2!3d31.1141168!4d77.1303875!16s%2Fg%2F11cjj9k1z_?hl=en-GB"),
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/p/AF1QipPCCMPZlI1ZLl1G7R7HrKDLRh8Di_yisGz_kefh=w296-h202-n-k-rw-no-v1',
      title: 'Hotel Chaman Palace',
      description: 'Fingask Estate, Shimla',
      price: '₹1184',
      rating: 3.8,
      location:
          "https://www.google.com/maps/place/Hotel+Chaman+Palace/@31.1074764,77.1648079,17z/data=!3m1!4b1!4m9!3m8!1s0x390578edea41c05f:0xa636cd42ea1cab48!5m2!4m1!1i2!8m2!3d31.1074764!4d77.1669966!16s%2Fg%2F1x5f8r2r?hl=en-GB"),
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/p/AF1QipNmTbmaSUIRD5h1UpGXeCve99132woLZTJ_PuA6=w296-h202-n-k-rw-no-v1',
      title: 'Shimla Havens Resort',
      description: 'Summer Hill, Shimla',
      price: '₹4077',
      rating: 4.2,
      location:
          "https://www.google.com/maps/place/Shimla+Havens+Resort/@31.1059832,77.130394,17z/data=!3m1!4b1!4m9!3m8!1s0x39057906ffffffff:0xc9c1405031e9941d!5m2!4m1!1i2!8m2!3d31.1059832!4d77.1325827!16s%2Fg%2F1pp2t_hkx?hl=en-GB")
];

final List<Hotel> Faridabad = [
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/p/AF1QipN9OU_DG0DeWZTPjxvr9RKfQ4BwcH7zSbV_gUSh=w296-h202-n-k-rw-no-v1',
      title: 'Radisson Blu ',
      description: 'Mathura Rd, Faridabad',
      price: '₹9854',
      rating: 4.6,
      location: "https://"),
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/p/AF1QipOUh2O8mAtus1H0-PE4DRLfEXyHAuUicm8eiIC7=w296-h202-n-k-rw-no-v1',
      title: 'Milenium Boutique',
      description: ' Neelam Bata Rd, AC Nagar',
      price: '₹1938',
      rating: 3.9,
      location: "https://"),
  Hotel(
      imageUrl:
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/6d/59/c5/oyo-28017-hotel-olive.jpg?w=700&h=-1&s=1',
      title: 'Hotel Olive ',
      description: ' Punjab Rolling machine',
      price: '₹1926',
      rating: 4.0,
      location: "https://"),
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/p/AF1QipP3wPAPkUsCZUiPvtIL7nVXzs_5TUn_xz28jE_k=w296-h202-n-k-rw-no-v1',
      title: 'Hotel Delite',
      description: ' Neelam Bata Rd, AC Nagar,',
      price: '₹3192',
      rating: 3.9,
      location: "https://"),
];

final List<Hotel> Delhi = [
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/p/AF1QipOhNP-ER6mX5rFZtmdVwYsHd8ntEcR2u1w34oMe=w296-h202-n-k-rw-no-v1',
      title: 'De Pavilion Hotel',
      description: 'Block RZ, Mahipalpur Village',
      price: '₹2603',
      rating: 4.5,
      location: "https://"),
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/gps-proxy/ALm4wwne3oDepQiljbZspP1fak5sebb8dDLHOTYcStlYWZ_Ly3a0yY0KxETmTs8QLtaDmcRRSPXDaLSqD6uu_CQWAiJgpF4MckadrHgwmA1N_ssLCa-9EyTBiRMFe-DNZp463XCQxMGsG-BvmYFEL92Rm6eXBXQiRVaVDMRGUT2hYT53WsevI2WH6qvD=w296-h202-n-k-rw-no-v1',
      title: 'Hotel The Tark',
      description: 'Street Number 7, near igi Airport',
      price: '₹835',
      rating: 4.4,
      location: "https://"),
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/gps-proxy/ALm4wwnOTscu1n5to56GoWCMLU15o0Selq7CrMhp2t5YnhWLWuffLsS5vX69I1xJFW1cI-ITpFc_ZQu5v2OXrUcVeOJmpDx6G328JA5LLDXySjl26Sn0q8b-z1u22hOvi8fivznfL-9_ktOimWZ2GVt6rAwUF8dXh67Dl29tnGdT9MKI9SRe6Ocn6DJ4=w296-h202-n-k-rw-no-v1',
      title: 'Novotel New Delhi Aerocity',
      description: 'IGI Rd, Aerocity, Airport',
      price: '₹8400',
      rating: 4.6,
      location: "https://"),
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/p/AF1QipMeliJ7ds60AkBLgA5KpDEmFKjAItxDcqEprjGA=w296-h202-n-k-rw-no-v1',
      title: 'Hotel City Park',
      description: ' Poorvi Pitampura, Pitam Pura',
      price: '₹5612',
      rating: 4.2,
      location: "https://"),
];
final List<Hotel> Panipat = [
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/p/AF1QipNtD1TnvQ1jKcRbTHA1i2xCPWKM0uKEAkjVK5Zb=w296-h202-n-k-rw-no-v1',
      title: 'The Orlov ',
      description: ' Ansals Sushant City, Gate',
      price: '₹2492',
      rating: 4.0,
      location: "https://"),
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/p/AF1QipPSDoRe0FxTGrdRPxEqQ9cX3r1mcN2E8JM-7Mw8=w296-h202-n-k-rw-no-v1',
      title: 'Hotel Abhinandan',
      description: 'G.T. Road, Near NFL',
      price: '₹1512',
      rating: 3.9,
      location: "https://"),
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/p/AF1QipNSquCiIN9JbPZiYJrygH9WRRKYdBYeHH7a3Jze=w296-h202-n-k-rw-no-v1',
      title: 'Hotel Viasora',
      description: ' Assandh Road, Ram Lal Chowk',
      price: '₹3424',
      rating: 3.8,
      location: "https://"),
  Hotel(
      imageUrl:
          'https://lh5.googleusercontent.com/p/AF1QipOLhaYcuYaykJjgjcmhmCS7pHbWUvK96T_8psxs=w253-h183-k-no',
      title: 'HOTEL HIVE',
      description: 'Grand Trunk Rd, near SBI Bank',
      price: '₹3700',
      rating: 4.0,
      location: "https://"),
];

final List<Hotel> Chandigarh = [
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/p/AF1QipMrCUVr1_KjPCg-jUFoT_EqiQxhBzAXDRXp_lIr=w296-h202-n-k-rw-no-v1',
      title: 'Hotel Turquoise',
      description: ' ट्रिब्यून चौक, Industrial Area Phase II',
      price: '₹3919',
      rating: 3.6,
      location: "https://"),
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/p/AF1QipPx65WcbfO07wuVzQ94cukSNQuKnCPwhR3c0EU5=w296-h202-n-k-rw-no-v1',
      title: 'Lemon Tree Hotel',
      description: ' MW, Industrial Area Phase I',
      price: '₹3060',
      rating: 3.9,
      location: "https://"),
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/p/AF1QipNOogds6TaGbT6c9lEV2sNtHwsMhVSGveJsVX9N=w296-h202-n-k-rw-no-v1',
      title: 'Hotel Mountview',
      description: ' Azaadi Rte, Sector 10A',
      price: '₹5948',
      rating: 4.3,
      location: "https://"),
  Hotel(
      imageUrl:
          'https://lh3.googleusercontent.com/gps-proxy/ALm4wwmH3vEUQnHTAba0Bsk9GcTSB9-Qb3XsGI0JQGXZD3mEQnVL0Q78Cflp9alHlGpjHW4DrLJFM5isbtjzOV6gly6m6roJVTYDMKh01f8UgRYwmri5fERO22Dj7t-lJVe0s4f4gnF7tpFCsSwPuwHqREesDODidYyIxcu9N8mBmx3sX4jsZjWWp21a=w296-h202-n-k-rw-no-v1',
      title: 'The Piccadily Hotel',
      description: 'Sector 22 B, Himalaya Marg',
      price: '₹4720',
      rating: 4.1,
      location: "https://"),
];

Map<String, List<Hotel>> ravish = {
  'Shimla': Shimla,
  'Faridabad': Faridabad,
  'Delhi': Delhi,
  'Panipat': Panipat,
  'Chandigarh': Chandigarh,
};
