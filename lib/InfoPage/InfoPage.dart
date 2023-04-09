import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 20,),
              Center(child: Text("FIFA World Cup Qatar 2022",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),),
              Center(child: Text("Sustainabilty is at the forefront of preparations for the FIFA  World Cup Qatar 2022™, and the Supreme Committee for Delivery & Legacy (SC) is on track to achieve its commitment to deliver the first-ever carbon neutral FIFA World Cup™. The SC’s efforts in achieving carbon neutrality have resulted in two FIFA World Cup™ stadiums receiving top sustainability ratings this year. Both Education City Stadium and Al Bayt Stadium achieved the five-star Global Sustainability Assesment System (GSAS) rating. Solar energy will contribute to powering the tournament as promised in the  original bid. Qatar’s national utility company, Kahramaa, is currently developing multiple projects including a largescale 800 MW solar energy plant. Upon the conclusion of the tournament, the plant will continue to produce clean renewable energy for decades, leaving a significant legacy in carbon reduction. In addition, some of the stadiums were constructed with the intent for parts of them to be disassembled and donated to developing countries around the world.5"),),
              SizedBox(height: 20,),
              Center(child: Text("Solar Power",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),),
              Center(child: Text("Considering the abundance of sunshine in the Arabian Peninsula, Qatar has made major strides to become a global leader in solar power electricity generation. Qatar aims to add 2-4 GW of solar energy by 2030 to reduce CO2 emissions by 5 MPTA.Qatar has multiple investments in solar power plants in the country to quickly transition to renewable energy sources. One of Qatar’s important solar investments in the “Siraj Solar Energy” project which is expected to produce about 700 MW of electricity in the fourth quarter of 2021. In January 2020, Qatar signed an agreement with French energy giant, Total, and Japan’s Marubeni, to build a solar power plant capable of producing 800 MW, a tenth of the country’s peak energy demand, according to the country’s energy minister. The Al Kharsaah, which is the first large-scale solar power plant being developed in Qatar, will apply latest solar energy technologies,"),),
              SizedBox(height: 20,),
              Center(child: Text(" including dual panels to save space, automated systems for sun-tracking and robotic cleaning of solar panels to help increase production efficiency and reduce the plant’s operational expenses. It is expected to be complete by 2022 when the country hosts the FIFA World Cup.6"),)

            ],
          ),
        ),
      ),
    );
  }
}
