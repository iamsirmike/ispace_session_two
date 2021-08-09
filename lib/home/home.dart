import 'package:flutter/material.dart';
import 'package:new_app/home/widgets/job_card.dart';
import 'package:new_app/models/gig.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: ListView(
            children: [
              Row(
                children: [
                  Icon(Icons.sort),
                  Spacer(),
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage('assets/images/mike.jpeg'),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Search New Jobs",
                style: TextStyle(
                  color: Color(0xff22253F),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Recently Added",
                style: TextStyle(
                  color: Color(0xff22253F),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                separatorBuilder: (_, index) => SizedBox(
                  height: 20,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: gigs.length,
                itemBuilder: (context, index) {
                  var gigItem = gigs[index];
                  return JobCard(gigItem: gigItem);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Recently Added",
                style: TextStyle(
                  color: Color(0xff22253F),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}