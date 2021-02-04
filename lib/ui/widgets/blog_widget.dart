part of 'widget.dart';

class BlogPost extends StatelessWidget {
  final Blog blog;
  const BlogPost(this.blog);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultmargin,
        vertical: defaultmargin,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 60,
            margin: EdgeInsets.only(
              right: 20,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: mainColor2,
            ),
            child: Center(
              child: Text(
                blog.image,
                style: whiteTextFont.copyWith(
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width -
                2 * defaultmargin -
                60 -
                20 -
                100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  blog.title,
                  style: blackTextFont.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  blog.desc,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width -
                    2 * defaultmargin -
                    60 -
                    70 -
                    140,
                child: Text(
                  blog.tanggal,
                  textAlign: TextAlign.right,
                  style: whiteTextFont.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
