


import 'package:car/screens/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:o3d/o3d.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    O3DController controller = O3DController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage('assets/michael-dam-mEZ3PoFGs_k-unsplash.jpg'),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Action lorsqu'on appuie sur l'icône de notifications
            },
          ),
        
        ],
      ),
   body: SingleChildScrollView(
  child: Column(
    children: [
      Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello John",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Select a Car For Rent",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search, color: const Color.fromARGB(255, 44, 44, 44)),
                suffixIcon: Icon(Icons.tune, color: Color.fromARGB(255, 252, 82, 3)),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(15),
        height: 180,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            O3D.asset(
              src: 'assets/bmw_m8_competition_widebody.glb',
              controller: controller,
              ar: false,
              autoPlay: true,
            ),
            Positioned(
              left: 20,
              bottom: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'La Lamborghini Miura est un modèle automobile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Icon(
                    Icons.directions_car,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    


         SizedBox(height: 5), // Add some spacing between search and categories

 Column(
          children: [
            SizedBox(height: 5),
            Wrap(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        child: ListView.builder(
                          itemCount: categories.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true, // Use shrinkWrap
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: SvgPicture.asset(
                                categories[index].thumbnailImage,
                                width: 24,
                                height: 24,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    ),
  ],
),
    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Available Cars Near You",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.tune,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
                  SizedBox(height: 5), // Add some spacing between search and categories

Column(
  children: [
    SizedBox(height: 5),
    Wrap(
      children: [
        Expanded(child: 
          Container(
            margin: EdgeInsets.only(right: 10, bottom: 10),
            child: Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 34, 34, 34).withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
    ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: products.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.only(bottom: 10), // Adjust spacing between items
          child: Stack(
            alignment: Alignment.bottomLeft, // Adjust alignment as needed
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(products[index].productImageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 240, // Adjust height based on your design
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  mainAxisSize: MainAxisSize.min,
                  children: [
                   
                    
                   SizedBox(height: 5),
                  Text(
                    products[index].productName,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 14, 13, 13),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.attach_money,
                        color: const Color.fromARGB(255, 8, 8, 8),
                      ),
                      Text(
                        "${products[index].Price} /day",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 8, 8, 8),
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.people,
                        color: Color.fromARGB(255, 1, 185, 241),
                      ),
                      Text(
                        products[index].seats,
                        style: TextStyle(
                          color: Color.fromARGB(255, 1, 185, 241),
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.directions_car,
                        color: Color.fromARGB(255, 1, 185, 241),
                      ),
                      Text(
                        products[index].auto,
                        style: TextStyle(
                          color: Color.fromARGB(255, 1, 185, 241),
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 247, 80, 2),
                ),
              ),
            ],
          ),
        );
      },
    ),
  ],
),

   )))
   ]
   )
          ])
           ] )
    ])
 )
   
    );
  }
}