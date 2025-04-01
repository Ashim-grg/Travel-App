import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class ExtraInfo extends StatefulWidget {
  const ExtraInfo({super.key});

  @override
  State<ExtraInfo> createState() => _ExtraInfoState();
}

class _ExtraInfoState extends State<ExtraInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Icon(LucideIcons.info),
              SizedBox(width: 5,),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                       text: 'Note:',
                       style: GoogleFonts.afacad(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.orange.shade700
                        )
                      ),
                      TextSpan(
                        text: 'The Information shown are Aggregated and average date from the Community.',
                        style: GoogleFonts.afacad(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 16
                        )
                      )
                    ]
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              Row(
                children: [
                  Icon(LucideIcons.sunSnow),
                  SizedBox(width: 10,),
                  Text('28 C,Rainy')
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(LucideIcons.bike),
                  SizedBox(width: 10,),
                  Text('All Mode of Transportation is available')
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(LucideIcons.trendingUp),
                  SizedBox(width: 10,),
                  Text('742m')
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(LucideIcons.audioWaveform),
                  SizedBox(width: 10,),
                  Text('Activities available to do')
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Container(
  alignment: Alignment.centerLeft, // Forces alignment to the left
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start, // Aligns all rows to the left
    children: [
      Row(
        children: [
          SizedBox(width: 20,),
          Icon(Icons.circle, size: 4, color: Colors.black),
          SizedBox(width: 8),
          Text('Boating'),
        ],
      ),
      Row(
        children: [
          SizedBox(width: 20,),
          Icon(Icons.circle, size: 4, color: Colors.black),
          SizedBox(width: 8),
          Text('Sightseeing'),
        ],
      ),
      Row(
        children: [
          SizedBox(width: 20,),
          Icon(Icons.circle, size: 4, color: Colors.black),
          SizedBox(width: 8),
          Text('Night Life'),
        ],
      ),
      Row(
        children: [
          SizedBox(width: 20,),
          Icon(Icons.circle, size: 4, color: Colors.black),
          SizedBox(width: 8),
          Text('Cable car ride to Sarangkot'),
        ],
      ),
    ],
  ),
)

        ],
      )
    );
  }
}