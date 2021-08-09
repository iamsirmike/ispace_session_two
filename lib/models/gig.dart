class Gig {
  final String name;
  final String location;
  final String salary;
  final int colorCode;

  Gig(this.name, this.location, this.salary, this.colorCode);
}

List<Gig> gigs = [
  Gig('UI/UX Designer', 'Ghana', 'GHS 2000', 0xffFF807F),
  Gig('Visual Designer', 'Nigeria', 'GHS 5000', 0xffC1D1BD),
  Gig('Graphics Designer', 'Ghana', 'GHS 9000', 0xff7C7C7C),
  Gig('Product Manager', 'USA', 'GHS 10000', 0xffFEAE00),
];
