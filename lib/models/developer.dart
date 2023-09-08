class Developer {
  final String name;
  final String img;
  final String description;
  final String twitterUrl;
  final String githubUrl;
  final String linkedinUrl;

  Developer({
    required this.name,
    required this.img,
    this.description = '',
    this.twitterUrl = '',
    this.githubUrl = '',
    this.linkedinUrl = '',
  });
}
