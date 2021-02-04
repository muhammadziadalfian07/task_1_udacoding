class Blog {
  String title;
  String desc;
  String tanggal;
  String image;

  Blog({
    this.desc,
    this.title,
    this.image,
    this.tanggal,
  });
}

List<Blog> mockBlogs = [
  Blog(
    title: "whats is flutter",
    desc:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    image: "w",
    tanggal: "Jan 25, 2021",
  ),
  Blog(
    title: "whats is Dart",
    desc:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    image: "D",
    tanggal: "Jan 25, 2021",
  ),
  Blog(
    title: "whats is Laravel",
    desc:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    image: "L",
    tanggal: "Jan 25, 2021",
  ),
];
