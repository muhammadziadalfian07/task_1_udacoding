part of 'pages.dart';

class CreateBlogPage extends StatefulWidget {
  @override
  _CreateBlogPageState createState() => _CreateBlogPageState();
}

class _CreateBlogPageState extends State<CreateBlogPage> {
  int maxLine = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create a post"),
        backgroundColor: mainColor1,
      ),
      body: Stack(
        children: [
          Container(
            color: mainColor1,
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),
          ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: defaultmargin,
                  horizontal: defaultmargin,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Title",
                      style: blackTextFont.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: TextField(
                        cursorColor: mainColor1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: mainColor1,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: mainColor1,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Content",
                      style: blackTextFont.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 20),
                      width: double.infinity,
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        textInputAction: TextInputAction.newline,
                        maxLines: maxLine,
                        cursorColor: mainColor1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: mainColor1,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: mainColor1,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => BlogPage()));
                        },
                        elevation: 0,
                        color: mainColor3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Publish",
                          style: whiteTextFont.copyWith(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
