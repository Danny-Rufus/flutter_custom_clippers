class BubbleClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    double oneEigth = width / 8;
    double oneFourth = height / 4;

    final path = Path();

    path.moveTo(oneEigth / 2, oneFourth * 2);
    path.quadraticBezierTo(
        oneEigth / 2, oneFourth, oneEigth, oneFourth); // topLeft curve
    path.lineTo(oneEigth * 6.5, oneFourth);
    path.quadraticBezierTo(
        oneEigth * 7, oneFourth, oneEigth * 7, oneFourth * 2); // topRight curve
    path.quadraticBezierTo(oneEigth * 7, oneFourth * 3, oneEigth * 6.5,
        oneFourth * 3); // bottomRight curve
    path.lineTo(oneEigth * 5.8, oneFourth * 3);
    path.lineTo(oneEigth * 5.5, oneFourth * 4); // v-shape
    path.lineTo(oneEigth * 5.2, oneFourth * 3);
    path.lineTo(oneEigth, oneFourth * 3);
    path.quadraticBezierTo(oneEigth / 2, oneFourth * 3, oneEigth / 2,
        oneFourth * 2); //bottomLeft curve

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
