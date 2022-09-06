import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../resources/colors.dart';

class TechnologyScreen extends StatefulWidget {
  const TechnologyScreen({Key? key}) : super(key: key);

  @override
  State<TechnologyScreen> createState() => _TechnologyScreenState();
}

class _TechnologyScreenState extends State<TechnologyScreen> {

  List list = [
    {
      "author": "Ridham Gambhir",
      "content": "A woman in Ohio had to call 911 using her smartwatch after she got herself stuck upside down while using an inversion table at the gym around 3 am. The woman was recording herself doing the exercise on the inversion table, which suspends the body upside down to help relieve back pain. Her videos garnered millions of views on TikTok. ",
      "date": "05 Sep 2022,Monday",
      "id": "1b106c8134b5486bae750eeedb2c01f5",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662363031291_906.jpg?",
      "readMoreUrl": "https://www.timesnownews.com/viral/viral-video-woman-gets-stuck-upside-down-in-gym-equipment-at-3-am-calls-police-for-help-using-her-smartwatch-article-93996893/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "01:34 pm",
      "title": "US woman calls 911 using smartwatch after she's stuck upside down in gym at 3 am",
      "url": "https://www.inshorts.com/en/news/us-woman-calls-911-using-smartwatch-after-shes-stuck-upside-down-in-gym-at-3-am-1662365098347"
    },
    {
      "author": "Anmol Sharma",
      "content": "The government has summoned Wikipedia executives after India pacer Arshdeep Singh's page was edited to show links with Khalistan after he dropped a catch against Pakistan. As per preliminary reports, the edits were made by accounts linked to Pakistan. The government panel will reportedly question Wikipedia executives on checks and balances in place on their platform to avoid such edits.",
      "date": "05 Sep 2022,Monday",
      "id": "ec627ec5e58d4e329bc2ff9629408485",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662363070941_830.jpg?",
      "readMoreUrl": "https://twitter.com/CNNnews18/status/1566673201316315137?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "02:58 pm",
      "title": "Govt summons Wikipedia execs after Arshdeep's page edited to show links with Khalistan",
      "url": "https://www.inshorts.com/en/news/govt-summons-wikipedia-execs-after-arshdeeps-page-edited-to-show-links-with-khalistan-1662370085091"
    },
    {
      "author": "Hiral Goyal",
      "content": "Japanese scientists have created a remote-controlled cyborg cockroach that can be used to inspect dangerous areas and monitor the environment. They developed a system using an ultrasoft solar cell that doesn't hinder the cockroach's movement. The system is wired into the cockroach's nervous system and pressing a button sends a shock, tricking it into moving in a certain direction.",
      "date": "06 Sep 2022,Tuesday",
      "id": "b21521411c244fdeb9d364bc50411dc5",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662455236958_237.jpg?",
      "readMoreUrl": "https://www.timesnownews.com/viral/remote-control-cockroaches-to-help-inspect-hazardous-areas-near-you-article-94005520/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "03:27 pm",
      "title": "Remote-controlled cyborg cockroach fitted with solar cell created; video released",
      "url": "https://www.inshorts.com/en/news/remotecontrolled-cyborg-cockroach-fitted-with-solar-cell-created-video-released-1662458234636"
    },
    {
      "author": "Ridham Gambhir",
      "content": "TikTok has denied claims of any data breach after a hacking forum said it had accessed the data of over 2 billion users. The hacker forum had claimed that it had accessed 790GB worth of user data, platform statistics, code, and more. A TikTok spokesperson asserted that its team \"found no evidence of a security breach\".",
      "date": "06 Sep 2022,Tuesday",
      "id": "0ddf1971209a46f9b9168ec5043a2c93",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662455875213_348.jpg?",
      "readMoreUrl": "https://www.independent.co.uk/tech/tiktok-hack-data-breach-security-b2159868.html?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "03:39 pm",
      "title": "TikTok denies breach after hacker group claims 2 billion users' data stolen",
      "url": "https://www.inshorts.com/en/news/tiktok-denies-breach-after-hacker-group-claims-2-billion-users-data-stolen-1662458941588"
    },
    {
      "author": "Ananya Goyal",
      "content": "Elon Musk on Tuesday tweeted a screenshot of some comments on one of his tweets, apparently by a fake account of Binance CEO Changpeng Zhao, and wrote, \"90% of my comments are bots.\" Musk has accused Twitter of lying about the number of bots on the platform. He's currently seeking to terminate the 44 billion merger agreement signed with Twitter.",
      "date": "06 Sep 2022,Tuesday",
      "id": "f19ad2f2c7bd4803b3cc00a0d105ebf6",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662409004714_503.jpg?",
      "readMoreUrl": "https://twitter.com/elonmusk/status/1566853171720470528?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "03:28 pm",
      "title": "Elon Musk says 90% of comments on his tweets are bots, shares screenshot",
      "url": "https://www.inshorts.com/en/news/elon-musk-says-90-of-comments-on-his-tweets-are-bots-shares-screenshot-1662458304568"
    },
    {
      "author": "Sakshita Khosla",
      "content": "Meta-owned Instagram has been fined \u20ac405 million (around 402 million) for allegedly violating children's privacy, including the publication of children's email addresses and phone numbers. The fine has been levied by the Irish DPC and is the second highest fine under the EU's General Data Protection Regulation (GDPR). Instagram is the third Meta-owned company fined by the Irish DPC.",
      "date": "05 Sep 2022,Monday",
      "id": "563127fe69cb428496f84adbe12bd8e2",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662394501068_904.jpg?",
      "readMoreUrl": "https://www.reuters.com/technology/irish-regulator-fines-instagram-400-million-over-chidrens-data-2022-09-05/?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "09:49 pm",
      "title": "Instagram fined 400 million by Ireland for violating children's privacy",
      "url": "https://www.inshorts.com/en/news/instagram-fined-400-million-by-ireland-for-violating-childrens-privacy-1662394781346"
    },
    {
      "author": "Ridham Gambhir",
      "content": "Reliance Industries has acquired a 79.4% stake in US-based SenseHawk Inc through primary infusion and secondary purchase, for 32 million (\u20b9255 crore), the company said in a BSE filing. Founded in 2018, SenseHawk develops software-based management tools for the solar energy generation industry. While the transaction will be completed by 2022-end, the deal marks RIL's foray into new energy.  \n",
      "date": "06 Sep 2022,Tuesday",
      "id": "3f83ea50131647fe825417bf90f9b4eb",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662433598641_816.jpg?",
      "readMoreUrl": "https://www.cnbctv18.com/business/companies/reliance-industries-expands-new-energy-presence-with-sensehawk-deal-14657311.htm/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "09:14 am",
      "title": "RIL acquires 79.4% stake in US-based solar software firm SenseHawk for 32m",
      "url": "https://www.inshorts.com/en/news/ril-acquires-794-stake-in-usbased-solar-software-firm-sensehawk-for-32m-1662435873514"
    },
    {
      "author": "Sakshita Khosla",
      "content": "Paytm parent entity One97 Communications on Sunday denied having links with the loan merchants that are under investigation by ED in the Chinese loan app case. It said the merchants were \"independent entities\", a day after ED raided Paytm's Bengaluru office and announced the freezing of some funds. Paytm said the funds frozen by ED don't belong to it.",
      "date": "04 Sep 2022,Sunday",
      "id": "1fb91f360252482f8ad99f25c7d39355",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/4_sun/img_1662297869245_593.jpg?",
      "readMoreUrl": "https://paytm.com/blog/corporate/our-statement-on-ed-investigation-merchants-under-scrutiny-are-not-paytm-entities/?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "07:12 pm",
      "title": "Paytm denies links to Chinese loan merchants being probed by ED after raids",
      "url": "https://www.inshorts.com/en/news/paytm-denies-links-to-chinese-loan-merchants-being-probed-by-ed-after-raids-1662298942271"
    },
    {
      "author": "Hiral Goyal",
      "content": "Former US President Donald Trump was trolled after he claimed Meta CEO Mark Zuckerberg came to the White House for dinner last week. \"The weirdo...kissed my a** all night...'Sir, you're number one on Facebook. I'd like to congratulate you',\" Trump said on Saturday. Twitter users pointed out that Trump left White House in 2021 and that he's suspended from Facebook.",
      "date": "04 Sep 2022,Sunday",
      "id": "ed11ccd026d04dc69839a4e48e87795d",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/4_sun/img_1662285145853_240.jpg?",
      "readMoreUrl": "https://www.indy100.com/amp/donald-trump-pennsylvania-rally-quotes-2658143683?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "06:07 pm",
      "title": "Trump says Zuckerberg came to White House for dinner with him 'last week'; trolled",
      "url": "https://www.inshorts.com/en/news/trump-says-zuckerberg-came-to-white-house-for-dinner-with-him-last-week-trolled-1662295030457"
    },
    {
      "author": "Anmol Sharma",
      "content": "The Competition Commission of India (CCI) has approved the 4.7-billion acquisition of payment gateway BillDesk by Prosus' PayU. It is said to be the largest acquisition in India's digital payments space. The acquisition was announced in August last year. With the deal, PayU will now operate in more than 20 markets.   ",
      "date": "05 Sep 2022,Monday",
      "id": "0400b294791d4f2290ceb26fe29b7ad7",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662385572078_704.jpg?",
      "readMoreUrl": "https://www.moneycontrol.com/news/business/announcements/competition-commission-approves-payus-4-7-billion-acquisition-of-billdesk-9134461.html/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "07:46 pm",
      "title": "PayU's acquisition of BillDesk for 4.7 billion approved by CCI",
      "url": "https://www.inshorts.com/en/news/payus-acquisition-of-billdesk-for-47-billion-approved-by-cci-1662387378409"
    },
    {
      "author": "Ananya Goyal",
      "content": "Hackers have stolen crypto worth more than 185,000 raised by actor and comedian Bill Murray as part of a charity auction. Murray had auctioned off a \"Beer with Bill Murray\" NFT on Wednesday, which was won by Coinbase user Brant Boersma for 119.2 ETH. Following the incident, the runner-up, Coinbase user Mishap72, donated 120 ETH to reimburse the charity.  ",
      "date": "05 Sep 2022,Monday",
      "id": "9d943a64b0ea4a1dbb951f5aa7d4436c",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662364262624_507.jpg?",
      "readMoreUrl": "https://news.abplive.com/business/crypto/bill-murray-nft-hack-funds-stolen-charity-auction-coinbase-project-venkman-details-1551789/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "01:46 pm",
      "title": "Hackers steal actor Bill Murray's crypto after 185,000 charity auction",
      "url": "https://www.inshorts.com/en/news/hackers-steal-actor-bill-murrays-crypto-after-185000-charity-auction-1662365783456"
    },
    {
      "author": "Ashley Paul",
      "content": "Researchers at Netherland's Maastricht University on Monday said they're working on a smartphone app that can accurately detect COVID-19 infection in people's voices with the help of artificial intelligence. They claimed that the app is more accurate than several antigen tests. The app's results have a turnaround time of less than a minute, a researcher said.",
      "date": "05 Sep 2022,Monday",
      "id": "0d8d855d6139465e8a7df0c7a9cdce70",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662370019456_425.jpg?",
      "readMoreUrl": "https://www.digit.in/article/amp/apps/65082/a-smartphone-app-to-detect-covid-19-from-peoples-voices-is-under-work-how-it-works?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "03:53 pm",
      "title": "Researchers working on app to detect COVID-19 using users' voice samples",
      "url": "https://www.inshorts.com/en/news/researchers-working-on-app-to-detect-covid19-using-users-voice-samples-1662373397532"
    },
    {
      "author": "Ashley Paul",
      "content": "E-commerce firm Shopee has rescinded dozens of job offers in the past two weeks after its parent firm Sea reported rising losses and slower revenue growth, Reuters reported. Shopee withdrew the offers days before the people were due to begin work. \"Due to adjustments to hiring plans...a number of roles at Shopee are no longer available,\" a Shopee representative said.",
      "date": "06 Sep 2022,Tuesday",
      "id": "342ff23d33794dda9e225c1b67a8ffb3",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662454918783_422.jpg?",
      "readMoreUrl": "https://www.reuters.com/world/asia-pacific/tech-workers-left-hanging-sea-e-commerce-arm-shopee-rescinds-job-offers-2022-09-06/?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "02:50 pm",
      "title": "Shopee rescinded dozens of job offers in last 2 weeks: Report",
      "url": "https://www.inshorts.com/en/news/shopee-rescinded-dozens-of-job-offers-in-last-2-weeks-report-1662456052169"
    },
    {
      "author": "Aishwarya Awasthi",
      "content": "Cloudflare has blocked harassment campaign site Kiwi Farms citing an escalation in targeted threats on it. Cloudflare came under pressure to drop Kiwi Farms as a customer after the forum forced a transgender Twitch streamer into hiding. \"We believe there is an unprecedented emergency and immediate threat to human life unlike we have previously seen from Kiwi Farms,\" Cloudflare said.\n",
      "date": "05 Sep 2022,Monday",
      "id": "a82edac9506b484497a597ad09bf1801",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662366396541_863.jpg?",
      "readMoreUrl": "https://blog.cloudflare.com/kiwifarms-blocked/?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "02:20 pm",
      "title": "Cloudflare blocks hate site Kiwi Farms over 'threat to human life'",
      "url": "https://www.inshorts.com/en/news/cloudflare-blocks-hate-site-kiwi-farms-over-threat-to-human-life-1662367820906"
    },
    {
      "author": "Ashley Paul",
      "content": "Google has advised its users to quickly install a security update in its Chrome browser to safeguard themselves against a bug being actively exploited by hackers. We're aware that an exploit for 'CVE-2022-3075' exists in the wild, Google added. \"Access to bug details and links may be kept restricted until majority of users are updated with a fix,\" Google said. ",
      "date": "06 Sep 2022,Tuesday",
      "id": "140e5dee8c9149e2bfed3899e1498e79",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662458618088_798.jpg?",
      "readMoreUrl": "https://www.digit.in/article/amp/general/65099/google-warns-users-to-quickly-update-chrome-to-avoid-hacking-risk?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "04:01 pm",
      "title": "Google advises users to update Chrome browser to avoid hacking risk",
      "url": "https://www.inshorts.com/en/news/google-advises-users-to-update-chrome-browser-to-avoid-hacking-risk-1662460263197"
    },
    {
      "author": "Aishwarya Awasthi",
      "content": "University of Maryland's Center for Materials Innovation scientists have developed a new zinc battery with an electrolyte extracted from crab shells. The electrolyte is made from chitosan, a chemical derivative of chitin found in crab shells. About two-thirds of the battery could be broken down by microbes. The battery reportedly has an energy efficiency of 99.7% after 1,000 battery cycles.  ",
      "date": "05 Sep 2022,Monday",
      "id": "fa1d12b7c1dc4db6b3683af78ef604dc",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662367109223_557.jpg?",
      "readMoreUrl": "https://theprint.in/india/thousands-of-animals-are-being-relocated-in-zimbabwe-due-to-climate-change/1114730/?amp=&utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "02:36 pm",
      "title": "Crab shells to make biodegradable electrolyte for batteries in US",
      "url": "https://www.inshorts.com/en/news/scientists-use-crab-shells-to-make-biodegradable-electrolyte-for-batteries-1662368790454"
    },
    {
      "author": "Ananya Goyal",
      "content": "Apple is set to unveil the second generation of the AirPods Pro at its 'Far Out' event on September 7, Bloomberg's Mark Gurman has reported. He said, \"The new AirPods Pro will update a model that first went on sale in...October 2019.\" The new AirPods will reportedly include Apple's next-generation H1 processor for improved audio quality and battery life.",
      "date": "05 Sep 2022,Monday",
      "id": "a11ed242448046f0919ea5c2c0cf8e51",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662364826636_760.jpg?",
      "readMoreUrl": null,
      "time": "01:51 pm",
      "title": "Apple to unveil new AirPods Pro 2 with H1 chip on Sept 7: Report",
      "url": "https://www.inshorts.com/en/news/apple-to-unveil-new-airpods-pro-2-with-h1-chip-on-sept-7-report-1662366086775"
    },
    {
      "author": "Ashley Paul",
      "content": "The South Korean government's YouTube channel was hacked on Saturday to stream the video of an interview with Tesla CEO Elon Musk, according to reports. The channel's name was changed to 'SpaceX Invest' and it showed a live broadcast on cryptocurrency. A government official said security measures were undertaken and the channel was restored about four hours after the hack.",
      "date": "05 Sep 2022,Monday",
      "id": "9a8d82d2e6784282af60a1816c98996c",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662369146233_623.jpg?",
      "readMoreUrl": "https://www.digit.in/article/amp/general/65068/skorean-govts-youtube-channel-hacked-to-stream-elon-musk-video?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "03:12 pm",
      "title": "S Korean govt's YouTube channel hacked, streams Elon Musk's interview: Report",
      "url": "https://www.inshorts.com/en/news/s-korean-govts-youtube-channel-hacked-streams-elon-musks-interview-report-1662370943476"
    },
    {
      "author": "Ashley Paul",
      "content": "Electronics and Information Technology Minister Ashwini Vaishnaw on Monday said the government is coming up with a new version of the Data Protection Bill and the amendment to the IT Act 2000, known as the Digital India Act. \"What we are looking at is making the online world more accountable for what is being published there,\" Vaishnaw said. ",
      "date": "05 Sep 2022,Monday",
      "id": "965710b519ce4deebd818672b8cfb24a",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662380590220_770.jpg?",
      "readMoreUrl": "https://www.moneycontrol.com/news/business/new-data-protection-bill-digital-india-act-to-make-online-world-more-accountable-ashwini-vaishnaw-9133721.html/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "06:40 pm",
      "title": "New Data Protection Bill, IT Act to make online world more accountable: Vaishnaw",
      "url": "https://www.inshorts.com/en/news/new-data-protection-bill-it-act-to-make-online-world-more-accountable-vaishnaw-1662383402738"
    },
    {
      "author": "Ashley Paul",
      "content": "The Centre told the High Court on Thursday that intermediary platforms like Twitter can't \"define what free speech is and what's not\". Twitter's petition challenging action against multiple handles is not maintainable, the Centre said while adding that Twitter's content management policies are \"a failure\". Twitter isn't taking effective steps to prevent the spread of fake news, the Centre said.",
      "date": "05 Sep 2022,Monday",
      "id": "3418f055b8db46c4ad9727aed9a2a278",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662389816398_104.jpg?",
      "readMoreUrl": "https://theprint.in/judiciary/platforms-like-twitter-cant-decide-what-is-free-speech-centre-defends-blocking-orders-in-hc/1112893/?amp=&utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "09:17 pm",
      "title": "Platforms like Twitter can't decide what is free speech: Centre to HC",
      "url": "https://www.inshorts.com/en/news/platforms-like-twitter-cant-decide-what-is-free-speech-centre-to-hc-1662392858660"
    },
    {
      "author": "Anisha Joneja",
      "content": "Amazon Inc is reportedly looking to enter the prescription drug market in Japan. Next year, when electronic prescriptions are allowed for the first time in Japan, Amazon plans to partner with small and mid-sized pharmacies to provide the service. Currently, the government of Japan sets the price cap for prescription drugs in a highly fragmented distribution system.",
      "date": "05 Sep 2022,Monday",
      "id": "cc84bc81cb1e4807866be841e9153a9f",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662397351503_183.jpg?",
      "readMoreUrl": "https://www.reuters.com/business/retail-consumer/amazon-eyes-entering-japan-prescription-drug-market-nikkei-2022-09-05/?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "11:03 pm",
      "title": "Amazon looking to enter prescription drug market in Japan: Report",
      "url": "https://www.inshorts.com/en/news/amazon-looking-to-enter-prescription-drug-market-in-japan-report-1662399206299"
    },
    {
      "author": "Ashley Paul",
      "content": "A research by scholars from Australia's University of Adelaide has revealed that between 60-80% of Twitter handles posting on the Russia-Ukraine war may be bot accounts. These bot accounts may have been pushing people to flee their homes during the conflict, the research said. Of accounts tweeting on the war, 90.16% were \"pro Ukraine\" while only 6.8% were \"pro Russia\".",
      "date": "05 Sep 2022,Monday",
      "id": "9d5fb37540ad4b3582c0517b99bfc058",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662388708841_527.jpg?",
      "readMoreUrl": "https://theprint.in/tech/60-80-of-twitter-accounts-posting-on-russia-ukraine-war-bots-90-pro-ukraine-finds-new-study/1114878/?amp=&utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "08:51 pm",
      "title": "60-80% Twitter accounts posting on Russia-Ukraine war may be bots: Study",
      "url": "https://www.inshorts.com/en/news/6080-twitter-accounts-posting-on-russiaukraine-war-may-be-bots-study-1662391274766"
    },
    {
      "author": "Aishwarya Awasthi",
      "content": "WhatsApp is working on a feature to allow users to message themselves from multiple devices linked to their accounts, WABetaInfo reported. The feature was spotted in the desktop beta. Once the feature is available to users, they will see a contact labeled 'You' in their chat list and they will be able to send messages to it via linked devices. ",
      "date": "05 Sep 2022,Monday",
      "id": "5961044268774bb495dcae8b682ddca6",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662371126339_454.jpg?",
      "readMoreUrl": "https://tech.hindustantimes.com/amp/tech/news/whatsapp-to-soon-allow-users-to-send-messages-to-themselves-71662043554489.html?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "03:20 pm",
      "title": "WhatsApp may soon allow users to text themselves across devices: Report",
      "url": "https://www.inshorts.com/en/news/whatsapp-may-soon-allow-users-to-text-themselves-across-devices-report-1662371419219"
    },
    {
      "author": "Aishwarya Awasthi",
      "content": "SpaceX has successfully launched a batch of 51 Starlink satellites completing its 40th mission of 2022. Seattle-based company Spaceflight's space tug Sherpa-LTC2 was also onboard with the Starlink satellites. Last week, SpaceX CEO Elon Musk said the firm is launching Starlink satellites roughly every five days now and plans to launch 100 orbital missions in 2023.",
      "date": "05 Sep 2022,Monday",
      "id": "2d9ad446abec4912a25071af967d6027",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662350313573_907.jpg?",
      "readMoreUrl": "https://twitter.com/SpaceX/status/1566607681212665856?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "11:01 am",
      "title": "SpaceX launches 51 Starlink satellites in its 40th mission of 2022",
      "url": "https://www.inshorts.com/en/news/spacex-launches-51-starlink-satellites-in-its-40th-mission-of-2022-1662355890502"
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
    late double sysWidth = MediaQuery
        .of(context)
        .size
        .width;
    late double sysHeight = MediaQuery
        .of(context)
        .size
        .height;
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
                              "Technology",
                              style: TextStyle(
                                color: textBlackColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Here is your technology news',
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
