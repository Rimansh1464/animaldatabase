
import 'package:flutter/material.dart';
import '../modal/animal_modal_data.dart';

class DetailsPage extends StatefulWidget {


   const DetailsPage({Key? key, required this.allanimal}) : super(key: key);
final Animal allanimal;
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 470,
              width: MediaQuery.of(context).size.width,
              decoration:  BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      image: NetworkImage("${widget.allanimal.image}"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50))),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: RichText(
                        text:  TextSpan(
                            text: '',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                            children: [
                          TextSpan(
                              text: "${widget.allanimal.name}",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))
                        ])),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RichText(
                      text:  TextSpan(
                          text: 'Color : ',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          children: [
                        TextSpan(
                            text: '${widget.allanimal.color}',
                            style: TextStyle(fontSize: 20, color: Colors.grey))
                      ])),
                  const Divider(color: Colors.grey, height: 20, thickness: 1),
                  RichText(
                      text:  TextSpan(
                          text: 'skinType : ',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          children: [
                        TextSpan(
                            text: '${widget.allanimal.skinType}',
                            style: TextStyle(fontSize: 20, color: Colors.grey))
                      ])),
                  const Divider(color: Colors.grey, height: 20, thickness: 1),
                  RichText(
                      text: TextSpan(
                          text: 'topSpeed : ',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          children: [
                        TextSpan(
                            text: '${widget.allanimal.topSpeed}',
                            style: TextStyle(fontSize: 20, color: Colors.grey))
                      ])),
                  const Divider(color: Colors.grey, height: 20, thickness: 1),
                  RichText(
                      text:  TextSpan(
                          text: 'weight : ',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          children: [
                        TextSpan(
                            text: '${widget.allanimal.weight}',
                            style: TextStyle(fontSize: 20, color: Colors.grey))
                      ])),
                  const Divider(color: Colors.grey, height: 20, thickness: 1),
                  RichText(
                      text:  TextSpan(
                          text: 'length : ',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          children: [
                        TextSpan(
                            text: '${widget.allanimal.length}',
                            style: TextStyle(fontSize: 20, color: Colors.grey))
                      ])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
