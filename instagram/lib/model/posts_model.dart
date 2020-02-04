class Post {
  String profImg;
  String name;
  String time;
  String image;
  String likes;
  String comments;

  Post({
    this.profImg,
    this.name,
    this.time,
    this.image,
    this.likes,
    this.comments,
  });
}

final List<Post> posts = [
  Post(
    profImg: 'assets/images/hoodie.jpg',
    name : 'Sam Martin',
    time : '10 min',
    image: 'assets/images/signage.jpg',
    likes: '2550',
    comments: '350',
  ),
    Post(
    profImg: 'assets/images/sface.jpg',
    name : 'John Rambo',
    time : '5 min',
    image: 'assets/images/lake.jpg',
    likes: '1845',
    comments: '240',
  ),
];