import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../models/news.dart';
import '../models/news_response.dart';
import '../resources/colors.dart';
import '../services/newsService.dart';

class ScienceScreen extends StatefulWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  State<ScienceScreen> createState() => _ScienceScreenState();
}

class _ScienceScreenState extends State<ScienceScreen> {
  List list = [
    {
      "author": "Swati Dubey",
      "content":
          "Often referred to as the 'red planet', Mars is not entirely red, NASA's Perseverance Rover has found. As it arrived at Mars' Jezero crater, it spotted volcanic rocks that are green, scientists said. These rocks are composed of \"large grains of olivine, the muddier less-gemlike version of peridot that tints so many of Hawaii's beaches dark green\", NASA stated.",
      "date": "27 Aug 2022,Saturday",
      "id": "8bacfda2166944b69cf4b207bf95ff2d",
      "imageUrl":
          "https://static.inshorts.com/inshorts/images/v1/variants/jpg/m/2022/08_aug/27_sat/img_1661609610526_431.jpg?",
      "readMoreUrl":
          "https://news.abplive.com/science/nasa-perseverance-rover-discovers-green-sand-on-red-planet-mars-1550117/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "08:45 pm",
      "title": "Mars is not entirely red: NASA",
      "url":
          "https://www.inshorts.com/en/news/mars-is-not-entirely-red-nasa-1661613341003"
    },
    {
      "author": "Daisy Mowke",
      "content":
          "Researchers from University of Cambridge created model embryos from mouse stem cells that form a brain and beating heart. The team developed the embryo model without eggs or sperm, and instead used stem cells. Researchers mimicked natural processes in lab by guiding the three types of stem cells found in early mammalian development to the point where they start interacting.",
      "date": "27 Aug 2022,Saturday",
      "id": "9b49e0da667a4ddca2a888bb312b447a",
      "imageUrl":
          "https://static.inshorts.com/inshorts/images/v1/variants/jpg/m/2022/08_aug/27_sat/img_1661619943103_787.jpg?",
      "readMoreUrl":
          "https://theprint.in/science/study-synthetic-embryo-with-brain-and-beating-heart-grown-from-multiple-stem-cells/1102512/?amp=&utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "11:02 pm",
      "title":
          "'Synthetic' embryo with brain and beating heart grown without eggs or sperm",
      "url":
          "https://www.inshorts.com/en/news/synthetic-embryo-with-brain-and-beating-heart-grown-without-eggs-or-sperm-1661621567110"
    },
    {
      "author": "Hiral Goyal",
      "content":
          "The NASA is set to launch Artemis 1 on August 29, the first mission in its lunar programme which aims to land astronauts on the Moon in 2025. The mission marks the debut of the most powerful rocket ever, which will send the Orion capsule on a 42-day journey around the Moon. The capsule won't carry any astronauts on board.",
      "date": "28 Aug 2022,Sunday",
      "id": "e31d63b81b60449c9f028b0cd4376e95",
      "imageUrl":
          "https://static.inshorts.com/inshorts/images/v1/variants/jpg/m/2022/08_aug/28_sun/img_1661661679174_418.jpg?",
      "readMoreUrl":
          "https://www.hindustantimes.com/science/nasas-moon-mission-artemis-1-to-lift-off-on-august-29-10-top-points-101661579080631-amp.html?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "10:32 am",
      "title":
          "What is Artemis 1, NASA's uncrewed Moon mission to be launched on Aug 29?",
      "url":
          "https://www.inshorts.com/en/news/what-is-artemis-1-nasas-uncrewed-moon-mission-to-be-launched-on-aug-29-1661662978125"
    },
    {
      "author": "Anmol Sharma",
      "content":
          "The launch of NASA's uncrewed Artemis 1 Moon mission, which includes lifting off of the space agency's most powerful rocket ever, was called off due to an issue with an engine bleed. \"The launch of Artemis I is no longer happening today...Teams will continue to gather data...and we'll keep you posted on timing of the next launch attempt,\" NASA tweeted. ",
      "date": "29 Aug 2022,Monday",
      "id": "d2e96f427bcc494f8ac2ce5ec2c5540a",
      "imageUrl":
          "https://static.inshorts.com/inshorts/images/v1/variants/jpg/m/2022/08_aug/29_mon/img_1661777567489_871.jpg?",
      "readMoreUrl":
          "https://apnews.com/article/nasa-moon-rocket-launch-63e9e863f294968af8869950909a212c?utm_campaign=fullarticle&utm_medium=referral&taid=630cb3315b2a660001b3eca4&utm_source=inshorts ",
      "time": "06:35 pm",
      "title":
          "Launch of NASA's most powerful Moon rocket called off due to engine bleed issue",
      "url":
          "https://www.inshorts.com/en/news/launch-of-nasas-most-powerful-moon-rocket-called-off-due-to-engine-bleed-issue-1661778315494"
    },
    {
      "author": "Ankush Verma",
      "content":
          "A huge dinosaur skeleton has been uncovered in a man's back garden in Portugal. Portuguese and Spanish palaeontologists excavated the dinosaur in August and believe it is a sauropod, which were herbivorous, four-legged creatures who had long necks and tails. The remains are now being studied by an international research team.",
      "date": "27 Aug 2022,Saturday",
      "id": "dab66671c7e445d79970cf63043ccb78",
      "imageUrl":
          "https://static.inshorts.com/inshorts/images/v1/variants/jpg/m/2022/08_aug/27_sat/img_1661584755217_476.jpg?",
      "readMoreUrl":
          "https://www.independent.co.uk/news/world/europe/dinosaur-excavation-back-garden-portugal-b2153763.html?utm_campaign=fullarticle&utm_medium=referral&utm_content=Echobox&utm_source=inshorts#Echobox=1661548610 ",
      "time": "12:53 pm",
      "title":
          "Huge dinosaur skeleton discovered in man's back garden in Portugal; pics viral",
      "url":
          "https://www.inshorts.com/en/news/huge-dinosaur-skeleton-discovered-in-mans-back-garden-in-portugal-pics-viral-1661585007802"
    },
    {
      "author": "Anmol Sharma",
      "content":
          "NASA's Artemis 1 Moon mission has been postponed again ahead of the rescheduled launch today. \"Teams attempted to fix an issue related to a leak in the hardware transferring fuel into the rocket, but were unsuccessful,\" NASA stated. Earlier, its first launch attempt was called off on August 29 due to an issue with an engine bleed.",
      "date": "03 Sep 2022,Saturday",
      "id": "bc027c6053f34110bae2d58fde40e198",
      "imageUrl":
          "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/3_sat/img_1662218836300_24.jpg?",
      "readMoreUrl":
          "https://twitter.com/nextspaceflight/status/1566083157035712513?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "09:09 pm",
      "title":
          "NASA's Artemis 1 Moon rocket launch postponed again due to fuel leak",
      "url":
          "https://www.inshorts.com/en/news/nasas-artemis-1-moon-rocket-launch-postponed-again-due-to-fuel-leak-1662219582196"
    },
    {
      "author": "Sakshita Khosla",
      "content":
          "NASA has said its Perseverance Rover has found that the floor of the Jezero Crater is made up of \"rocks that have interacted with water\". Scientists had expected to find sedimentary rocks at bottom of the Crater which held a lake billions of years ago, NASA said. But instead, they found two types of igneous rocks, it added.",
      "date": "27 Aug 2022,Saturday",
      "id": "807d0d133cf24ad3a96dce39d55d9830",
      "imageUrl":
          "https://static.inshorts.com/inshorts/images/v1/variants/jpg/m/2022/08_aug/27_sat/img_1661605197539_963.jpg?",
      "readMoreUrl":
          "https://mars.nasa.gov/news/9252/nasas-perseverance-makes-new-discoveries-in-mars-jezero-crater/?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "06:48 pm",
      "title": "NASA's Rover finds 'rocks shaped by water' on Mars",
      "url":
          "https://www.inshorts.com/en/news/nasas-rover-finds-rocks-shaped-by-water-on-mars-1661606309389"
    },
    {
      "author": "Daisy Mowke",
      "content":
          "Greenland's rapidly melting ice sheet will eventually raise global sea level by at least 10.6 inches, according to a study. It is being attributed to something called zombie ice. This dead ice, while still attached to thicker areas of ice, is no longer getting replenished by parent glaciers now receiving less snow and is melting from climate change, scientists said.",
      "date": "30 Aug 2022,Tuesday",
      "id": "b9d28bf79e6743f1a8dda561f013c773",
      "imageUrl":
          "https://static.inshorts.com/inshorts/images/v1/variants/jpg/m/2022/08_aug/30_tue/img_1661852181558_77.jpg?",
      "readMoreUrl": null,
      "time": "03:47 pm",
      "title":
          "'Zombie ice' threatens global sea level rise by at least 10 inches, say scientists",
      "url":
          "https://www.inshorts.com/en/news/zombie-ice-threatens-global-sea-level-rise-by-at-least-10-inches-say-scientists-1661854639249"
    },
    {
      "author": "Anmol Sharma",
      "content":
          "NASA has released the first direct image of a planet outside of our solar system taken by the world's most powerful telescope, James Webb Space Telescope. The exoplanet in Webb's image, called HIP 65426 b, is about six to 12 times the mass of Jupiter, NASA said. The Hubble Space Telescope has captured direct exoplanet images previously.",
      "date": "01 Sep 2022,Thursday",
      "id": "988b5976fc144532a71cfb3f49612411",
      "imageUrl":
          "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/1_thu/img_1662049297169_507.jpg?",
      "readMoreUrl":
          "https://twitter.com/NASAWebb/status/1565353100160176128?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "10:48 pm",
      "title":
          "1st pic of planet outside our solar system taken by most powerful telescope released",
      "url":
          "https://www.inshorts.com/en/news/1st-pic-of-planet-outside-our-solar-system-taken-by-most-powerful-telescope-released-1662052713897"
    },
    {
      "author": "Indraneel Sen",
      "content":
          "The European Union's medicines regulator on Thursday said it has approved two vaccines for protection against the omicron variant of COVID-19. The European Medicines Agency has okayed the doses of the US-German venture BioNTech-Pfizer and by US company Moderna. The vaccines are not only effective against the omicron variant BA.1 but also against the original strain of coronavirus.",
      "date": "01 Sep 2022,Thursday",
      "id": "0e8f5e253d074c30abdd628a9c99f514",
      "imageUrl":
          "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/1_thu/img_1662043953836_948.jpg?",
      "readMoreUrl":
          "https://amp.dw.com/en/covid-eu-regulator-approves-biontech-pfizer-moderna-vaccines-against-omicron/a-62994016?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "10:22 pm",
      "title":
          "European agency approves 2 vaccines for protection against omicron",
      "url":
          "https://www.inshorts.com/en/news/european-agency-approves-2-vaccines-for-protection-against-omicron-1662051136173"
    },
    {
      "author": "Swati Dubey",
      "content":
          "Researchers at IIT Guwahati have developed a non-toxic and edible coating to extend the shelf life of fruits and vegetables. The coating was made using a mixture of micro-algae extract and polysaccharides. \"It can help preserve vegetables and fruits for as long as two months,\" a researcher said. The coating has been tested on potatoes, tomatoes, strawberries, apples, pineapples etc. ",
      "date": "01 Sep 2022,Thursday",
      "id": "e044c571f35e4abd9dd8248bd259ca72",
      "imageUrl":
          "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/1_thu/img_1662037610160_443.jpg?",
      "readMoreUrl": null,
      "time": "07:21 pm",
      "title":
          "IIT Guwahati researchers develop edible coating to boost shelf life of fruits, vegetables",
      "url":
          "https://www.inshorts.com/en/news/iit-guwahati-researchers-develop-edible-coating-to-boost-shelf-life-of-fruits-vegetables-1662040291786"
    },
    {
      "author": "Swati Dubey",
      "content":
          "Excessive screen time can cause obesity and psychological problems in people, a study stated. \"Excessive exposure to blue light from...TVs, laptops and phones may have detrimental effects on a wide range of cells in our body, from skin and fat cells to sensory neurons,\" a researcher said. \"[Avoiding]...excessive blue light exposure may be a good anti-ageing strategy,\" he added.\n",
      "date": "03 Sep 2022,Saturday",
      "id": "21d67194a79a47be881f7593245215bb",
      "imageUrl":
          "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/3_sat/img_1662215215881_757.jpg?",
      "readMoreUrl":
          "https://www.aninews.in/news/health/study-finds-excessive-screen-time-linked-to-obesity-psychological-problems20220903161945/?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "10:20 pm",
      "title":
          "Obesity, psychological problems linked to excessive screen time: Study",
      "url":
          "https://www.inshorts.com/en/news/obesity-psychological-problems-linked-to-excessive-screen-time-study-1662223817579"
    },
    {
      "author": "Aishwarya Awasthi",
      "content":
          "University of Maryland's Center for Materials Innovation scientists have developed a new zinc battery with an electrolyte extracted from crab shells. The electrolyte is made from chitosan, a chemical derivative of chitin found in crab shells. About two-thirds of the battery could be broken down by microbes. The battery reportedly has an energy efficiency of 99.7% after 1,000 battery cycles.  ",
      "date": "05 Sep 2022,Monday",
      "id": "7511f2a7c5ef424e858298f90285b764",
      "imageUrl":
          "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662367109223_557.jpg?",
      "readMoreUrl":
          "https://theprint.in/india/thousands-of-animals-are-being-relocated-in-zimbabwe-due-to-climate-change/1114730/?amp=&utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "02:36 pm",
      "title":
          "Crab shells to make biodegradable electrolyte for batteries in US",
      "url":
          "https://www.inshorts.com/en/news/scientists-use-crab-shells-to-make-biodegradable-electrolyte-for-batteries-1662368790454"
    },
    {
      "author": "Aishwarya Awasthi",
      "content":
          "SpaceX successfully launched 54 Starlink satellites to orbit on Saturday marking its 38th mission of 2022. It was reportedly also the 24th mission of the year devoted to Starlink. The satellites were launched from Cape Canaveral Space Force Station in Florida atop a two-stage Falcon 9 rocket. The launch comes right ahead of NASA's Artemis l launch on August 29.",
      "date": "28 Aug 2022,Sunday",
      "id": "039d07bce50f40d8bd94f148cb897cf4",
      "imageUrl":
          "https://static.inshorts.com/inshorts/images/v1/variants/jpg/m/2022/08_aug/28_sun/img_1661663083786_36.jpg?",
      "readMoreUrl":
          "https://twitter.com/SpaceX/status/1563733731914895360?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "11:28 am",
      "title":
          "SpaceX launches 54 Starlink satellites in 38th mission this year",
      "url":
          "https://www.inshorts.com/en/news/spacex-launches-54-starlink-satellites-in-38th-mission-this-year-1661666292653"
    },
    {
      "author": "Swati Dubey",
      "content":
          "Rocket Lab is planning to launch the first private mission to Venus to probe the signs of life on the planet. The California-based company is building a spacecraft to fly through the planet's upper atmosphere, almost 30 miles above its surface, for roughly five minutes. The mission will be carried out using Electron Launch Vehicle and a Photon spacecraft.\n",
      "date": "26 Aug 2022,Friday",
      "id": "72e0bae9215549fbbd4b01b67c2405d4",
      "imageUrl":
          "https://static.inshorts.com/inshorts/images/v1/variants/jpg/m/2022/08_aug/26_fri/img_1661525051643_723.jpg?",
      "readMoreUrl":
          "https://tech.hindustantimes.com/amp/tech/news/rocket-lab-to-send-a-spacecraft-to-venus-look-for-signs-of-life-71661442142531.html?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "09:32 pm",
      "title":
          "Rocket Lab to send first private spacecraft to Venus to find signs of life",
      "url":
          "https://www.inshorts.com/en/news/rocket-lab-to-send-first-private-spacecraft-to-venus-to-find-signs-of-life-1661529720561"
    },
    {
      "author": "Swati Dubey",
      "content":
          "According to research, a now-defunct branch of the Nile helped Egyptians construct pyramids on Giza plateau. The new research, published in the journal PNAS, stated that the ancient Egyptian engineers used the Khufu branch of the Nile river to transport materials to the Giza plateau during 2686-2160 BCE. The environmental conditions at Khufu back then favoured transportation, researchers believe.",
      "date": "31 Aug 2022,Wednesday",
      "id": "cb5331fa82a648b294a67f6349f2fcaa",
      "imageUrl":
          "https://static.inshorts.com/inshorts/images/v1/variants/jpg/m/2022/08_aug/31_wed/img_1661953962281_371.jpg?",
      "readMoreUrl":
          "https://www.independent.co.uk/news/science/egypt-river-nile-branch-pyramids-study-b2156437.html?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "08:50 pm",
      "title":
          "Long-lost branch of the Nile helped build Egyptian pyramids, study confirms",
      "url":
          "https://www.inshorts.com/en/news/longlost-branch-of-the-nile-helped-build-egyptian-pyramids-study-confirms-1661959226442"
    },
    {
      "author": "Ashley Paul",
      "content":
          "NASA has announced that the launch of Artemis 1, the first uncrewed test flight of its Moon mission, will take place on September 3. The two-hour launch window of Space Launch System, NASA's most powerful rocket ever, will open at 11:47 pm (IST). Artemis 1's initial launch on August 29 was called off due to an engine bleed issue.",
      "date": "31 Aug 2022,Wednesday",
      "id": "41290e9b871e4690a7022c19c1167774",
      "imageUrl":
          "https://static.inshorts.com/inshorts/images/v1/variants/jpg/m/2022/08_aug/31_wed/img_1661940947070_147.jpg?",
      "readMoreUrl":
          "https://news.abplive.com/science/artemis-i-nasa-announces-september-3-as-new-launch-date-for-first-uncrewed-test-flight-of-upcoming-moon-mission-1551012/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "04:19 pm",
      "title":
          "NASA announces Sept 3 as new launch date for its most powerful rocket ever",
      "url":
          "https://www.inshorts.com/en/news/nasa-announces-sept-3-as-new-launch-date-for-its-most-powerful-rocket-ever-1661942997953"
    },
    {
      "author": "Swati Dubey",
      "content":
          "Researchers have unearthed a nearly-intact fossil of Mbiresaurus raathi, Africa's oldest discovered dinosaur, in Northern Zimbabwe. The long-necked dinosaur was about 6 feet long and weighed between 10 and 30 kilograms. The dinosaur stood on two legs and had small triangle-shaped teeth that were serrated, suggesting it could have been a herbivore or an omnivore, the researchers' findings stated.\n",
      "date": "01 Sep 2022,Thursday",
      "id": "2655fa3439b14c18ab2fd7acf3238aed",
      "imageUrl":
          "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/1_thu/img_1662038263735_164.jpg?",
      "readMoreUrl": null,
      "time": "09:10 pm",
      "title":
          "Fossil of Africa's oldest dinosaur discovered in Northern Zimbabwe",
      "url":
          "https://www.inshorts.com/en/news/fossil-of-africas-oldest-dinosaur-discovered-in-northern-zimbabwe-1662046834349"
    },
    {
      "author": "Swati Dubey",
      "content":
          "Researchers from Banaras Hindu University have discovered a new genus of cyanobacteria in Tripura. While the newly-discovered genus has been named Johanseniella, after well-known phycologist Professor Jeffrey R Johansen, the species has been named Tripurensis as it was discovered in Tripura. Researchers believe there might be numerous cyanobacteria in the Northeast that are yet to be discovered.\n",
      "date": "27 Aug 2022,Saturday",
      "id": "92644ecb069c42ac88793e963002e2c2",
      "imageUrl":
          "https://static.inshorts.com/inshorts/images/v1/variants/jpg/m/2022/08_aug/27_sat/img_1661612311767_936.jpg?",
      "readMoreUrl":
          "https://www.hindustantimes.com/science/new-genus-of-cyanobacteria-discovered-in-tripura-by-bhu-researchers-101661577487035-amp.html?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "09:35 pm",
      "title": "BHU researchers discover new genus of cyanobacteria in Tripura",
      "url":
          "https://www.inshorts.com/en/news/bhu-researchers-discover-new-genus-of-cyanobacteria-in-tripura-1661616348291"
    },
    {
      "author": "Swati Dubey",
      "content":
          "Around half a million-year-old fossilised tusk of a giant ancient elephant that once roamed around the Mediterranean has been discovered in southern Israel. The 2.5 metre-long tusk belongs to the now extinct straight-tusked elephant (Palaeoloxodon antiquus). \"This is the largest complete fossil tusk ever found at a prehistoric site in Israel or the Near East,\" a researcher said.\n",
      "date": "31 Aug 2022,Wednesday",
      "id": "6ba2646caceb42a2a308a195c32943cf",
      "imageUrl":
          "https://static.inshorts.com/inshorts/images/v1/variants/jpg/m/2022/08_aug/31_wed/img_1661954876382_677.jpg?",
      "readMoreUrl":
          "https://www.reuters.com/lifestyle/science/fossilized-tusk-giant-ancient-elephant-found-israel-2022-08-31/?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "08:55 pm",
      "title": "Fossilised tusk of giant ancient elephant discovered in Israel",
      "url":
          "https://www.inshorts.com/en/news/fossilised-tusk-of-giant-ancient-elephant-discovered-in-israel-1661959539620"
    },
    {
      "author": "Swati Dubey",
      "content":
          "Russia's space chief on Thursday said the 24-year-old International Space Station (ISS) is dangerous and unfit for purpose. \"Technically, the ISS has exceeded all its warranty periods,\" Yuri Borisov, head of the Roscosmos agency, said. \"An avalanche-like process of equipment failure is beginning, cracks are appearing,\" he added. Russia is planning to quit the project and launch its own station. ",
      "date": "01 Sep 2022,Thursday",
      "id": "05c973256e264a8387d0fb24f2ee0491",
      "imageUrl":
          "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/1_thu/img_1662039588542_230.jpg?",
      "readMoreUrl": null,
      "time": "10:01 pm",
      "title":
          "Ageing International Space Station is dangerous & unfit: Russia",
      "url":
          "https://www.inshorts.com/en/news/ageing-international-space-station-is-dangerous-unfit-russia-1662049888136"
    },
    {
      "author": "Swati Dubey",
      "content":
          "Astronauts Chen Dong and Liu Yang on board China's Tiangong space station on the six-month Shenzhou-14 mission successfully completed a six-hour spacewalk on Friday. The duo installed external parts to the module and tested its functions with another astronaut coordinating from inside. China has landed a rover on Mars and sent probes to the Moon under its space programme.\n",
      "date": "02 Sep 2022,Friday",
      "id": "7cfa319495f249fc8017315442291022",
      "imageUrl":
          "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/2_fri/img_1662131067085_904.jpg?",
      "readMoreUrl":
          "https://www.hindustantimes.com/science/chinas-shenzhou-14-astronauts-carry-out-spacewalk-101662108090009-amp.html?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "09:58 pm",
      "title":
          "China's Shenzhou-14 astronauts successfully complete 6-hour spacewalk",
      "url":
          "https://www.inshorts.com/en/news/chinas-shenzhou14-astronauts-successfully-complete-6hour-spacewalk-1662136123672"
    },
    {
      "author": "Swati Dubey",
      "content":
          "NASA's James Webb Space Telescope has captured the first clear evidence for CO2 in the atmosphere of an exoplanet. The gas giant planet named WASP-39 b orbits a Sun-like star 700 light-years away from the Earth. \"Detecting such a clear signal of carbon dioxide on WASP-39 b bodes well for...detection of atmospheres on smaller, terrestrial-sized planets,\" a researcher said.\n",
      "date": "26 Aug 2022,Friday",
      "id": "e5fffcc8024f4ac799c7bb17537d88fc",
      "imageUrl":
          "https://static.inshorts.com/inshorts/images/v1/variants/jpg/m/2022/08_aug/26_fri/img_1661522919637_923.jpg?",
      "readMoreUrl":
          "https://www.nasa.gov/feature/goddard/2022/nasa-s-webb-detects-carbon-dioxide-in-exoplanet-atmosphere?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "08:19 pm",
      "title":
          "In a first, NASA's James Webb Space Telescope detects CO2 on exoplanet",
      "url":
          "https://www.inshorts.com/en/news/in-a-first-nasas-james-webb-space-telescope-detects-co2-on-exoplanet-1661525388882"
    },
    {
      "author": "Aishwarya Awasthi",
      "content":
          "NASA's Artemis l mission's launch could be delayed by at least several weeks after two scrubbed launch attempts. The officials said they will likely have to roll the SLS rocket back to its assembly building to make repairs. NASA Administrator Bill Nelson said if the rollback happens, a new attempt to launch the mission may not happen until mid-October.   \n",
      "date": "04 Sep 2022,Sunday",
      "id": "eb698674e4c84bec94529419853ae0f5",
      "imageUrl":
          "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/4_sun/img_1662272939387_695.jpg?",
      "readMoreUrl":
          "https://www.reuters.com/lifestyle/science/nasa-ready-second-attempt-artemis-lunar-launch-2022-09-03/?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "02:45 pm",
      "title":
          "NASA's Artemis l mission faces weeks of delay after launch scrubbed",
      "url":
          "https://www.inshorts.com/en/news/nasas-artemis-l-mission-faces-weeks-of-delay-after-launch-scrubbed-1662282912377"
    },
    {
      "author": "Swati Dubey",
      "content":
          "A gigantic killer asteroid named 2022 QO31 is going to pass past the Earth on September 3, NASA said. The asteroid will pass from 5.3 million kilometres away from the Earth. However, if any last-minute deviation takes place, the 150-foot-wide asteroid can reach the Earth in two days. It is travelling at a speed of 30,420 kmph.",
      "date": "03 Sep 2022,Saturday",
      "id": "785873d5ef72430b875b211a0388c6c5",
      "imageUrl":
          "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/3_sat/img_1662214395100_678.jpg?",
      "readMoreUrl":
          "https://tech.hindustantimes.com/amp/tech/news/beware-gigantic-killer-asteroid-hurtling-towards-the-earth-today-says-nasa-will-it-strike-us-71662192255836.html?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "08:36 pm",
      "title": "150-foot-wide asteroid to pass past the Earth today: NASA",
      "url":
          "https://www.inshorts.com/en/news/150footwide-asteroid-to-pass-past-the-earth-today-nasa-1662217617832"
    }
  ];

// late NewsService _newsService;
//   List<NewsModel>? newsList;

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    // _newsService = NewsService(context);
    // getNewsList();
  }

  // getNewsList() async {
  //   EasyLoading.show(
  //     status: "LOADING...",
  //   );
  //
  //   NewsResponse? response = await _newsService.getNewsList();
  //   if(response == null){
  //     //todo push back
  //   }
  //   print("///////////////////");
  //   print(response);
  //   setState(() {
  //     newsList =
  //     (response != null) ? response.routes : null;
  //   });
  //   EasyLoading.dismiss();
  //   _refreshController.refreshCompleted();
  //   EasyLoading.dismiss();
  // }

  void _onRefresh() async {
    print("********Refresh**********");
    // await getNewsList();
    _refreshController.refreshCompleted();
    print("********Stop Refresh**********");
    EasyLoading.dismiss();
  }

  @override
  Widget build(BuildContext context) {
    late double sysWidth = MediaQuery.of(context).size.width;
    late double sysHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: sysWidth,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'NEWS',
                  style: TextStyle(
                    color: textWhiteColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: sysWidth,
              decoration: const BoxDecoration(
                color: mainBGColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        print("/////////////////////");
                        print("${list[1]['author']}");
                      },
                      child: Container(
                        width: sysWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Science",
                              style: TextStyle(
                                color: textBlackColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Here is your science news',
                              style: TextStyle(
                                color: textHideColor,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: sysWidth,
                      height: sysHeight - 320,
                      child: SmartRefresher(
                        enablePullDown: true,
                        enablePullUp: true,
                        header: const WaterDropMaterialHeader(
                          backgroundColor: mainBGColor,
                          color: primaryColor,
                        ),
                        controller: _refreshController,
                        onRefresh: _onRefresh,
                        child: LayoutBuilder(builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return list!.length > 0
                              ? Container(
                                  width: sysWidth,
                                  height: constraints.maxHeight,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        for (var i = 0; i < list!.length; i++)
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 120,
                                                  width: sysWidth,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: boxColor,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                          width:
                                                              sysWidth / 6 * 1,
                                                          child: CircleAvatar(
                                                            radius: 42,
                                                            backgroundColor:
                                                                Colors.blue,
                                                            child: CircleAvatar(
                                                              radius: 40,
                                                              backgroundImage:
                                                                  NetworkImage(
                                                                      "${list[i]['imageUrl']}"),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(width: 10),
                                                        Container(
                                                          width:
                                                              sysWidth / 6 * 4,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width:
                                                                    sysWidth /
                                                                        6 *
                                                                        4,
                                                                child: Expanded(
                                                                  child: Text(
                                                                    "${list[i]['title']}",
                                                                    style:
                                                                        const TextStyle(
                                                                      color:
                                                                          textBlackColor,
                                                                      fontSize:
                                                                          15,
                                                                    ),
                                                                    softWrap:
                                                                        true,
                                                                  ),
                                                                ),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  const Icon(
                                                                    Icons
                                                                        .access_time_outlined,
                                                                    color:
                                                                        textHideColor,
                                                                  ),
                                                                  SizedBox(
                                                                      width:
                                                                          10),
                                                                  Text(
                                                                    "author - ${list[i]['author']}",
                                                                    style:
                                                                        const TextStyle(
                                                                      color:
                                                                          textHideColor,
                                                                      fontSize:
                                                                          15,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "No Data",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: textBlackColor,
                                      ),
                                    ),
                                  ],
                                );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
