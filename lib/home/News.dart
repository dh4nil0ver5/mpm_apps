import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({Key key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text("News",
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                      SizedBox(
                        child: Container(
                          padding: EdgeInsets.only(right: 15),
                          child: TextButton(
                              onPressed: () {}, child: Text("klik disini !")),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://via.placeholder.com/140x100'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        // child: Text("dat a") /* add child content here */,
                      ),
                      Positioned(
                        bottom: 0.0,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(8),
                          decoration:
                              BoxDecoration(color: Colors.grey.shade700),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'hello',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // child: Text("data"),
        ),
      ],
    );
  }
}
