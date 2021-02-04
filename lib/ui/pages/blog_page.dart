part of 'pages.dart';

class BlogPage extends StatefulWidget {
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Blog"),
        backgroundColor: mainColor1,
        leading: Icon(
          MdiIcons.menu,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CreateBlogPage()));
        },
        backgroundColor: mainColor1,
        child: Icon(
          MdiIcons.plus,
        ),
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
          ListView.builder(
            itemCount: mockBlogs.length,
            itemBuilder: (context, index) => BlogPost(
              mockBlogs[index],
            ),
          ),
        ],
      ),
    );
  }
}
