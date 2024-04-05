import 'package:fan_page/widgets/card_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 250,
            height: double.infinity,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Card(
                      child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://scontent.flim14-1.fna.fbcdn.net/v/t39.30808-6/415321219_675039354833850_1681569165786885999_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGfA7BKdX6q-7Ld_r66hDo9089RKu-kAA7Tz1Eq76QADikd-mW3S8f_-gmLMuHmYp9GFee2SGhtfckpZAC_RIta&_nc_ohc=-7Oq2mjn8lAAb7-lTpb&_nc_ht=scontent.flim14-1.fna&oh=00_AfChx--znpp550czE2szvAKzPay8Clk_gCt71i_UxGmltQ&oe=66152881'),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                  height: 20,
                ),
                SizedBox(height: 20),
                Text(
                  'Acerca de:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Siguenos en nuestras redes sociales - Twitter@CocaCola'
                  ' - Facebook: CocaCola.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                  height: 20,
                ),
                Text('A'),
                Text(
                  '4.824.736',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 20),
                ),
                Text('clicks en "Me gusta"'),
                SizedBox(height: 5),
                Text(
                  '59.339',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 20),
                ),
                Text('Personas están hablando de esto'),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                  height: 20,
                ),
                Text('Me gusta'),
                SizedBox(height: 10),
                Row(
                  children: [
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Coca-Cola_Zero_logo.svg/653px-Coca-Cola_Zero_logo.svg.png',
                      // URL de la imagen pequeña
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        'Coca‑Cola® Zero Azúcar',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Fanta_logo_%282009%29.svg/2533px-Fanta_logo_%282009%29.svg.png',
                      // URL de la imagen pequeña
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        'Fanta',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                  height: 20,
                ),
                Image(
                  image: NetworkImage(
                      'https://www.shutterstock.com/image-photo/ankara-turkey-may-17-2014-600nw-193222430.jpg'),
                ),
              ],
            ),
          ),
          VerticalDivider(
            color: Colors.black,
            thickness: 2,
            width: 20,
            indent: 20,
            endIndent: 20,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Coca-Cola',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content:
                                Text('Muy bien chicos'), // Mensaje del Snackbar
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.thumb_up,
                        color: Colors.red,
                      ),
                      label: Text(
                        'Me Gusta',
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 40),
              Card(
                  color: Colors.red,
                  elevation: 10, // Elevación de la tarjeta
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20.0), // Bordes redondeados de la tarjeta
                  ),
                  child: Container(
                    width: 1630,
                    height: 500,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      // Bordes redondeados de la imagen
                      child: Image.asset(
                        'assets/img/coca.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
                SizedBox(height: 20),
                Container(

                  child: Card(
                    color: Colors.red,
                    elevation: 10, // Elevación de la tarjeta
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20.0), // Bordes redondeados de la tarjeta
                    ),
                    child: Container(
                      width: 500,
                      height: 250,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        // Bordes redondeados de la imagen
                        child: Image.network(
                          'https://i1.sndcdn.com/artworks-000053863819-unb6e7-t500x500.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
      ),
    );
  }
}
