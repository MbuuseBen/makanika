import 'dart:math';

import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final _vehicles = [
    {'name': 'BMW', 'logo': 'https://www.carlogos.org/car-logos/bmw-logo.png'},
    {
      'name': 'Ford',
      'logo': 'https://www.carlogos.org/car-logos/ford-logo.png'
    },
    {
      'name': 'Honda',
      'logo': 'https://www.carlogos.org/car-logos/honda-logo.png'
    },
    {
      'name': 'Subaru',
      'logo': 'https://www.carlogos.org/car-logos/subaru-logo.png'
    },
    {
      'name': 'Toyota',
      'logo': 'https://www.carlogos.org/car-logos/hyundai-logo.png'
    },
    {
      'name': 'Hyundai',
      'logo': 'https://www.carlogos.org/car-logos/hyundai-logo.png'
    },
    {
      'name': 'Lexus',
      'logo': 'https://www.carlogos.org/car-logos/lexus-logo.png'
    },
    {
      'name': 'Benz',
      'logo': 'https://www.carlogos.org/car-logos/mercedes-benz-logo.png'
    },
    {
      'name': 'Mitsubishu',
      'logo': 'https://www.carlogos.org/car-logos/mitsubishi-logo.png'
    },
  ];

  final _services = [
    {
      'name': 'Lubricant',
      'logo': 'https://www.carlogos.org/car-logos/bmw-logo.png'
    },
    {
      'name': 'Air condtion',
      'logo': 'https://www.carlogos.org/car-logos/ford-logo.png'
    },
    {
      'name': 'Engine',
      'logo': 'https://www.carlogos.org/car-logos/honda-logo.png'
    },
    {
      'name': 'Brake Fluid',
      'logo': 'https://www.carlogos.org/car-logos/subaru-logo.png'
    },
    {
      'name': 'Wiper',
      'logo': 'https://www.carlogos.org/car-logos/hyundai-logo.png'
    },
    {
      'name': 'Braking System',
      'logo': 'https://www.carlogos.org/car-logos/hyundai-logo.png'
    },
    {
      'name': 'Wheels',
      'logo': 'https://www.carlogos.org/car-logos/mercedes-benz-logo.png'
    },
    {
      'name': 'Air Intake System',
      'logo': 'https://www.carlogos.org/car-logos/lexus-logo.png'
    },
    {
      'name': 'Hydraulic',
      'logo': 'https://www.carlogos.org/car-logos/mitsubishi-logo.png'
    },
    {
      'name': 'Cooler',
      'logo': 'https://www.carlogos.org/car-logos/mitsubishi-logo.png'
    },
  ];

  final _hotDeals = [
    {
      'name': 'Engine Oil',
      'logo':
      'https://cdn3.louis.de/dynamic/articles/o_resize,w_1800,h_1800,m_limit,c_fff/dd.76.d7.10037628Motul71004T15W501l970DET0118.JPG'
    },
    {
      'name': 'Tires',
      'logo': 'https://www.pngall.com/wp-content/uploads/8/Tire-PNG-Pic.png'
    },
    {
      'name': 'Steering wheel',
      'logo':
      'https://pngimg.com/uploads/steering_wheel/steering_wheel_PNG16691.png'
    },
    {
      'name': 'Tail Lights',
      'logo':
      'https://i.pinimg.com/originals/fc/c4/80/fcc480e0879b067a4687908836d6fe90.png'
    },
    {
      'name': 'Rims',
      'logo':
      'https://www.pngitem.com/pimgs/m/4-45309_car-wheel-png-ruff-rims-transparent-png.png'
    },
    {
      'name': 'Leather Seats',
      'logo':
      'https://www.pngkit.com/png/full/389-3892110_leather-trimmed-interiors-nw-running-boards-car.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10.0)),
          child: TextField(
            decoration: InputDecoration(
                hintText: "What do you want to fix?",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                border: const OutlineInputBorder(borderSide: BorderSide.none)),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: 400,
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              elevation: 10,
              child:Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 1.0),
                    AspectRatio(
                      aspectRatio: 4 / 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          'https://cdn.dribbble.com/users/4861236/screenshots/14279740/automobile___car_promotion_poster_design__orange_.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),
          SizedBox(height: 15.0),
       Wrap(
            children: _services.map((_data) {
              final _color = Color((Random().nextDouble() * 0xFFFFFF).toInt());
              return FractionallySizedBox(
                widthFactor: 0.19,
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Column(children: [
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: const Alignment(-0.8, -0.6),
                            colors: [
                              _color.withOpacity(0.5),
                              _color.withOpacity(0.9),
                            ],
                            radius: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0)),
                      child: const Icon(
                        Icons.car_rental,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      _data['name']!,
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
              );
            }).toList(),
          ),
          Container(
            margin: const EdgeInsets.all(15.0),
            child: Row(
              children: const [
                Icon(Icons.car_repair),
                SizedBox(width: 5.0),
                Text('Vehicle Type'),
                Spacer(),
                Text('More'),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 400,
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 7.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                elevation: 10,
                child:Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Wrap(
                    children: _vehicles
                        .map(
                          (_data) => FractionallySizedBox(
                        widthFactor: 0.3,
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(_data["logo"]!, width: 40),
                              const SizedBox(width: 5.0),
                              Flexible(
                                child: Text(
                                  _data["name"]!,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
            ),),
          Container(
            margin: const EdgeInsets.all(15.0),
            child: Row(
              children: const [
                Icon(Icons.fireplace),
                SizedBox(
                  width: 5.0,
                ),
                Text('Hot Deal'),
                Spacer(),
                Text('More'),
              ],
            ),
          ),
          Container(
            height: 300,
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              elevation: 10,
              child:Padding(
                padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://cdn3.louis.de/dynamic/articles/o_resize,w_1800,h_1800,m_limit,c_fff/dd.76.d7.10037628Motul71004T15W501l970DET0118.JPG',
                          width: 100,
                        ),
                        SizedBox(height: 10.0),
                        Text('Engine Oil'),
                        SizedBox(height: 5.0),
                        Text('UGX 10,000'),
                      ],
                    ),
                  );
                }),
          ),
    ),
          ),
        ]),
      ),
    );
  }
}