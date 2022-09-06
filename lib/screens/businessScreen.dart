import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../resources/colors.dart';

class BusinessScreen extends StatefulWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  State<BusinessScreen> createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
  List list = [
    {
      "author": "Hiral Goyal",
      "content": "Former Tata Sons Chairman Cyrus Mistry, who passed away after his car met with an accident on Sunday, was cremated at the Worli crematorium in Mumbai. The 54-year-old executive was en route from Ahmedabad to Mumbai when the car he was travelling in hit a divider in Maharashtra's Palghar district. Mistry is survived by his wife Rohiqa and two children.",
      "date": "06 Sep 2022,Tuesday",
      "id": "e48c1bf1adc348cf986390103a81f48b",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662448688207_771.jpg?",
      "readMoreUrl": "https://www.news18.com/amp/news/india/cyrus-mistry-death-news-live-updates-accident-car-crash-funeral-today-mumbai-worli-crematorium-jehangir-pandole-last-rites-anahita-darius-health-updates-livenews-5896561.html?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "12:50 pm",
      "title": "Former Tata Sons Chairman Cyrus Mistry's last rites held in Mumbai",
      "url": "https://www.inshorts.com/en/news/former-tata-sons-chairman-cyrus-mistrys-last-rites-held-in-mumbai-1662448834014"
    },
    {
      "author": "Ridham Gambhir",
      "content": "Reliance Industries has acquired a 79.4% stake in US-based SenseHawk Inc through primary infusion and secondary purchase, for 32 million (\u20b9255 crore), the company said in a BSE filing. Founded in 2018, SenseHawk develops software-based management tools for the solar energy generation industry. While the transaction will be completed by 2022-end, the deal marks RIL's foray into new energy.  \n",
      "date": "06 Sep 2022,Tuesday",
      "id": "04adce92e70e418695c791212a94f5da",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662433598641_816.jpg?",
      "readMoreUrl": "https://www.cnbctv18.com/business/companies/reliance-industries-expands-new-energy-presence-with-sensehawk-deal-14657311.htm/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "09:14 am",
      "title": "RIL acquires 79.4% stake in US-based solar software firm SenseHawk for 32m",
      "url": "https://www.inshorts.com/en/news/ril-acquires-794-stake-in-usbased-solar-software-firm-sensehawk-for-32m-1662435873514"
    },
    {
      "author": "Anmol Sharma",
      "content": "The Competition Commission of India (CCI) has approved the 4.7-billion acquisition of payment gateway BillDesk by Prosus' PayU. It is said to be the largest acquisition in India's digital payments space. The acquisition was announced in August last year. With the deal, PayU will now operate in more than 20 markets.   ",
      "date": "05 Sep 2022,Monday",
      "id": "edf30a9f3a144a70a04ae1dec4035e87",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662385572078_704.jpg?",
      "readMoreUrl": "https://www.moneycontrol.com/news/business/announcements/competition-commission-approves-payus-4-7-billion-acquisition-of-billdesk-9134461.html/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "07:46 pm",
      "title": "PayU's acquisition of BillDesk for 4.7 billion approved by CCI",
      "url": "https://www.inshorts.com/en/news/payus-acquisition-of-billdesk-for-47-billion-approved-by-cci-1662387378409"
    },
    {
      "author": "Ridham Gambhir",
      "content": "Union Minister Nitin Gadkari questioned car manufacturers amid the death of former Tata Sons Chairman Cyrus Mistry in a car accident. He said, \"The same manufacturers put six airbags when they export those cars. Then why do you put only four airbags in Indian cars?\" He added that the cost of increasing an airbag is \u20b9900. ",
      "date": "06 Sep 2022,Tuesday",
      "id": "8c63f9178c4a48ae9b3e88c3b041c479",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662436193277_777.jpg?",
      "readMoreUrl": "https://www.hindustantimes.com/india-news/people-think-back-seaters-don-t-need-belt-nitin-gadkari-after-cyrus-mistry-s-death-101662424790627-amp.html?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "09:45 am",
      "title": "You put 6 airbags in exported cars then why just 4 in Indian units: Gadkari to car makers",
      "url": "https://www.inshorts.com/en/news/you-put-6-airbags-in-exported-cars-then-why-just-4-in-indian-units-gadkari-to-car-makers-1662437716808"
    },
    {
      "author": "Aishwarya Awasthi",
      "content": "Volkswagen will be listing Porsche in one of the biggest initial public offerings in years. It intends to list Porsche in Frankfurt and offer 25% of Porsche's preferred stock to private investors in a public offering aimed for late September or early October. Porsche SE has agreed to purchase the shares at the IPO price plus a 7.5% premium.\n\n",
      "date": "06 Sep 2022,Tuesday",
      "id": "eccf13ae519f4d24a08ef1b0c7ec9608",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662451462761_175.jpg?",
      "readMoreUrl": "https://www.reuters.com/business/autos-transportation/porsche-ipo-plans-progressing-no-decision-yet-vw-cfo-2022-09-05/?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "01:43 pm",
      "title": "Volkswagen to list Porsche in one of the biggest IPOs in years",
      "url": "https://www.inshorts.com/en/news/volkswagen-to-list-porsche-in-one-of-the-biggest-ipos-in-years-1662452034563"
    },
    {
      "author": "Ridham Gambhir",
      "content": "Autopsies revealed that the deaths of former Tata Sons Chairman Cyrus Mistry and his friend Jehangir Pandole were caused by \"severe head trauma and multiple external and internal injuries to vital organs\". Mistry sustained major head trauma along with multiple fractures in the chest, head region, thigh and neck, said a doctor at JJ hospital, where the autopsies were conducted. \n",
      "date": "06 Sep 2022,Tuesday",
      "id": "2c7fb43e7e6e4520a52408cb0b462621",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662443502919_546.jpg?",
      "readMoreUrl": null,
      "time": "11:46 am",
      "title": "Severe head trauma, injuries to vital organs led to Mistry's death: Autopsy",
      "url": "https://www.inshorts.com/en/news/severe-head-trauma-injuries-to-vital-organs-led-to-mistrys-death-autopsy-1662445001650"
    },
    {
      "author": "Ridham Gambhir",
      "content": "After the demise of former Tata Sons Chairman Cyrus Mistry in a road accident, Shapoorji Pallonji Group shared a condolence letter on social media. It wrote, \"CPM, as he was fondly known, was a voracious reader, committed to a journey of lifelong learning across multiple disciplines. Despite his success, he always kept a low profile, away from the limelight.\"",
      "date": "06 Sep 2022,Tuesday",
      "id": "22da06c42e884c2e8a37472c508f64ff",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662433009660_763.jpg?",
      "readMoreUrl": "https://www.cnbctv18.com/business/companies/cyrus-mistry-death-shapoorji-pallonji-group-reaction-last-rites-14655041.htm/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "08:47 am",
      "title": "He kept a low profile despite his success: Shapoorji Pallonji Group on Mistry's death",
      "url": "https://www.inshorts.com/en/news/he-kept-a-low-profile-despite-his-success-shapoorji-pallonji-group-on-mistrys-death-1662434255025"
    },
    {
      "author": "Aishwarya Awasthi",
      "content": "The death of Bed Bath & Beyond CFO Gustavo Arnal, who jumped from his 18th-floor apartment in NYC's 'Jenga Building', has been ruled a suicide, NYC Medical Examiner's Office said. Arnal died from \"multiple\" blunt force trauma. He left no note behind and did not say anything to his wife, who was home at the time, WNBC reported citing sources.  ",
      "date": "06 Sep 2022,Tuesday",
      "id": "b31314e5d2c84c06986fa7b4b09a294f",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662449680173_838.jpg?",
      "readMoreUrl": "https://www.reuters.com/business/bed-bath-beyond-cfos-death-ruled-suicide-2022-09-06/?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "01:14 pm",
      "title": "Bed Bath & Beyond CFO Gustavo Arnal's death ruled a suicide",
      "url": "https://www.inshorts.com/en/news/bed-bath-beyond-cfo-gustavo-arnals-death-ruled-a-suicide-1662450245019"
    },
    {
      "author": "Dharini Mudgal",
      "content": "Global payments giant Mastercard has replaced Paytm as the title sponsor of the Board of Control for Cricket in India. Mastercard has announced that it has acquired the BCCI's title sponsorship rights for all international (both women and men) and domestic matches for the 2022-23 season. Notably, Paytm held the rights for seven years as the title sponsor of BCCI.",
      "date": "05 Sep 2022,Monday",
      "id": "b8ce69257e8949fcbb76c1029bad808a",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662389571986_15.jpg?",
      "readMoreUrl": "https://www.moneycontrol.com/news/business/mastercard-wins-title-sponsorship-rights-for-all-bcci-international-home-cricket-matches-9134041.html/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "09:21 pm",
      "title": "Mastercard replaces Paytm as BCCI's title sponsor for 2022-23 season",
      "url": "https://www.inshorts.com/en/news/mastercard-replaces-paytm-as-bccis-title-sponsor-for-202223-season-1662393112990"
    },
    {
      "author": "Ashley Paul",
      "content": "E-commerce firm Shopee has rescinded dozens of job offers in the past two weeks after its parent firm Sea reported rising losses and slower revenue growth, Reuters reported. Shopee withdrew the offers days before the people were due to begin work. \"Due to adjustments to hiring plans...a number of roles at Shopee are no longer available,\" a Shopee representative said.",
      "date": "06 Sep 2022,Tuesday",
      "id": "e1b457201bf24b7ab7ab0ab9f6809325",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662454918783_422.jpg?",
      "readMoreUrl": "https://www.reuters.com/world/asia-pacific/tech-workers-left-hanging-sea-e-commerce-arm-shopee-rescinds-job-offers-2022-09-06/?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "02:50 pm",
      "title": "Shopee rescinded dozens of job offers in last 2 weeks: Report",
      "url": "https://www.inshorts.com/en/news/shopee-rescinded-dozens-of-job-offers-in-last-2-weeks-report-1662456052169"
    },
    {
      "author": "Anisha Joneja",
      "content": "Amazon Inc is reportedly looking to enter the prescription drug market in Japan. Next year, when electronic prescriptions are allowed for the first time in Japan, Amazon plans to partner with small and mid-sized pharmacies to provide the service. Currently, the government of Japan sets the price cap for prescription drugs in a highly fragmented distribution system.",
      "date": "05 Sep 2022,Monday",
      "id": "4fcac36da837454ea4361e078e5c8fa3",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662397351503_183.jpg?",
      "readMoreUrl": "https://www.reuters.com/business/retail-consumer/amazon-eyes-entering-japan-prescription-drug-market-nikkei-2022-09-05/?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "11:03 pm",
      "title": "Amazon looking to enter prescription drug market in Japan: Report",
      "url": "https://www.inshorts.com/en/news/amazon-looking-to-enter-prescription-drug-market-in-japan-report-1662399206299"
    },
    {
      "author": "Aishwarya Awasthi",
      "content": "Tesla CEO Elon Musk has said, \"South Korea is currently tracking to lose about half its population roughly every generation.\" His comments followed a tweet which said South Korea plans to give every family with a newborn child a monthly allowance of 740. \"Long lifespan hides the dire nature of the problem,\" Musk added discussing South Korea's population issue.",
      "date": "06 Sep 2022,Tuesday",
      "id": "473e6fe9356f404fa17e48845ba26169",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662436193622_827.jpg?",
      "readMoreUrl": "https://twitter.com/elonmusk/status/1566822635056599043?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "01:09 pm",
      "title": "S Korea faces losing half its population every generation: Musk",
      "url": "https://www.inshorts.com/en/news/s-korea-faces-losing-half-its-population-every-generation-musk-1662449943793"
    },
    {
      "author": "Dharini Mudgal",
      "content": "India's services sector saw improvement in August from a four-month low Purchasing Managers' Index in July. The S&P Global India Services PMI rose to 57.2 in August from July's 55.5. \"Business confidence strengthened substantially, reaching its highest since May 2018, while employment rose at...fastest pace in over 14 years,\" Pollyanna De Lima, Economics Associate Director at S&P Global said.",
      "date": "05 Sep 2022,Monday",
      "id": "7b91ad1cc7cf427c929345ab2532905f",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662385336263_27.jpg?",
      "readMoreUrl": "https://www.financialexpress.com/economy/india-services-pmi-accelerates-from-4-month-low-to-57-2-in-august-on-uptick-in-business-activity-employment/2655468/lite/?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "08:09 pm",
      "title": "India's services sector PMI grows from 4-month low to 57.2 in Aug",
      "url": "https://www.inshorts.com/en/news/indias-services-sector-pmi-grows-from-4month-low-to-572-in-aug-1662388764250"
    },
    {
      "author": "Dharini Mudgal",
      "content": "India's external debt grew by 8.2% to 620.70 billion on March 31, 2022, from 573.7 billion a year ago, Union Finance Ministry said. External debt as a ratio to GDP fell marginally to 19.9% at the end of March 2022, it added. Foreign currency reserves as a ratio to external debt stood slightly lower at 97.8% as of March-end 2022.",
      "date": "05 Sep 2022,Monday",
      "id": "dd055f8ae4084cd79701ef5222443b99",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662388160378_613.jpg?",
      "readMoreUrl": "https://www.hindustantimes.com/business/indias-external-debt-grew-by-8-2-in-2021-22-finance-ministry-101662383371087-amp.html?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "08:42 pm",
      "title": "India's external debt grew by 8.2% in 2021-22: Finance Ministry",
      "url": "https://www.inshorts.com/en/news/indias-external-debt-grew-by-82-in-202122-finance-ministry-1662390723079"
    },
    {
      "author": "Ashley Paul",
      "content": "Just like an aircraft's blackbox, Mercedes cars have a chip that can give details of the speed and can provide vital information of the accident that killed former Tata Sons Chairman Cyrus Mistry, police said. This comes after the car Mistry was travelling in was inspected by Mercedes officials. The accident spot and vehicle were also inspected by forensic experts.",
      "date": "05 Sep 2022,Monday",
      "id": "3186707c6c4d40ecaec7eaebe9f6f992",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662395072318_46.jpg?",
      "readMoreUrl": null,
      "time": "10:49 pm",
      "title": "Chip in car can give vital info on Cyrus Mistry's accident: Police",
      "url": "https://www.inshorts.com/en/news/chip-in-car-can-give-vital-info-on-cyrus-mistrys-accident-police-1662398351800"
    },
    {
      "author": "Srishty Choudhury",
      "content": "Adani Group Chairman Gautam Adani met Bangladesh Prime Minister Sheikh Hasina in New Delhi on Monday. Taking to Twitter, Adani called her vision for Bangladesh \"inspirational and stunningly bold\". He also said that Adani Power is committed to commissioning its 1,600 MW Godda Power Project in Jharkhand and dedicated transmission line to Bangladesh by Bijoy Dibosh, i.e. December 16, 2022.\n",
      "date": "06 Sep 2022,Tuesday",
      "id": "28b800082356467dbce19a9d6cdbe841",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662440345264_241.jpg?",
      "readMoreUrl": "https://www.hindustantimes.com/india-news/gautam-adani-meets-bangladesh-pm-sheikh-hasina-committed-to-by-bijoy-dibosh-101662423267557-amp.html?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "11:40 am",
      "title": "Adani meets Bangladesh PM, commits to power transmission line by Dec",
      "url": "https://www.inshorts.com/en/news/adani-meets-bangladesh-pm-commits-to-power-transmission-line-by-dec-1662444625466"
    },
    {
      "author": "Dharini Mudgal",
      "content": "Union Finance Minister Nirmala Sitharaman on Monday said windfall tax on petroleum products and crude is not ad hoc. She said that it's being charged in regular consultation with the industry. The tax rate and its resetting are done in complete consultations with the industry, she said, adding, \"The very idea was implemented after taking the industry into full confidence.\"",
      "date": "05 Sep 2022,Monday",
      "id": "76101024deea4769bc6b3b21b9c6bbd1",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662393844506_799.jpg?",
      "readMoreUrl": null,
      "time": "10:30 pm",
      "title": "Windfall tax on petroleum products, crude isn't ad hoc: Sitharaman",
      "url": "https://www.inshorts.com/en/news/windfall-tax-on-petroleum-products-crude-isnt-ad-hoc-sitharaman-1662397237425"
    },
    {
      "author": "Ashley Paul",
      "content": "The Supreme Court on Monday agreed to hear Amazon's plea against Competition Commission of India's (CCI) order to hold its approval for Amazon's 2019 deal with Future Group's Future Coupons Private Limited (FCPL). The court has sought a reply from the concerned parties and will hear the case on September 19. Amazon moved the SC after NCLAT upheld CCI's decision.",
      "date": "05 Sep 2022,Monday",
      "id": "bb0b91d5c8b44aa981fdc0d985d24452",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662378806882_76.jpg?",
      "readMoreUrl": "https://www.moneycontrol.com/news/trends/legal-trends/sc-agrees-to-hear-amazons-plea-against-cci-suspension-of-approval-to-2019-deal-9131551.html/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "06:24 pm",
      "title": "SC to hear Amazon's plea against CCI's suspension of Amazon-Future deal",
      "url": "https://www.inshorts.com/en/news/sc-to-hear-amazons-plea-against-ccis-suspension-of-amazonfuture-deal-1662382493741"
    },
    {
      "author": "Srishty Choudhury",
      "content": "Oil prices surged by 4% on Monday amid the Organization of the Petroleum Exporting Countries (OPEC) and its allies agreeing to a marginal production cut by 1,00,000 barrels per day for October to boost prices. Brent crude futures for November delivery rose by 3.8% to 96.55 a barrel, while West Texas Intermediate crude increased by 3.6% to 89.98. \n",
      "date": "06 Sep 2022,Tuesday",
      "id": "240c829de123489a8a308729f1b1c6fe",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662435935273_388.jpg?",
      "readMoreUrl": "https://www.moneycontrol.com/news/business/commodities/oil-prices-jump-nearly-4-as-opec-agrees-small-oil-output-cut-9135491.html/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "01:18 pm",
      "title": "Oil prices surge 4% as OPEC+ agrees to marginal cut in production",
      "url": "https://www.inshorts.com/en/news/oil-prices-surge-4-as-opec+-agrees-to-marginal-cut-in-production-1662450488892"
    },
    {
      "author": "Dharini Mudgal",
      "content": "Reserve Bank of India (RBI) Governor Shaktikanta Das on Monday said that India's monetary policy will remain watchful, nimble-footed and calibrated going forward. He further said India's central bank has intervened in forex markets to prevent excessive volatility in the exchange rate. He noted that the Indian rupee had moved in an orderly manner during sharp depreciations in other currencies.",
      "date": "05 Sep 2022,Monday",
      "id": "43a00856da164b8785feecfafc12268d",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662391070597_215.jpg?",
      "readMoreUrl": "https://www.moneycontrol.com/news/business/economy/monetary-policy-will-remain-watchful-nimble-footed-calibrated-rbi-governor-9134821.html/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "09:40 pm",
      "title": "India's monetary policy will remain watchful, calibrated: RBI Guv",
      "url": "https://www.inshorts.com/en/news/indias-monetary-policy-will-remain-watchful-calibrated-rbi-guv-1662394227174"
    },
    {
      "author": "Srishty Choudhury",
      "content": "The government is not likely to sell its residual 29.54% stake in the Vedanta-controlled Hindustan Zinc (HZL) all at once, instead in tranches, an official source said. The Centre's stake is valued at around \u20b936,000 crore, based on the current market price of the company's shares. Meanwhile, bankers will soon begin road shows for the offer for sale (OFS).\n",
      "date": "06 Sep 2022,Tuesday",
      "id": "9a9d024c1ac34413bd1c750971693a14",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662433775576_505.jpg?",
      "readMoreUrl": "https://www.financialexpress.com/industry/govt-to-sell-balance-hzl-stake-in-tranches/2656348/lite/?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "11:44 am",
      "title": "Govt to sell Hindustan Zinc's residual stake in tranches: Report",
      "url": "https://www.inshorts.com/en/news/govt-to-sell-hindustan-zincs-residual-stake-in-tranches-report-1662444848227"
    },
    {
      "author": "Anisha Joneja",
      "content": "Securities and Exchange Board of India (SEBI) has given in-principle approval to Helios Capital to launch a mutual fund business. The portfolio management services business, Helios Capital Management PTE Limited, applied for a mutual fund license in February 2021. Founder and Fund Manager Samir Arora announced the approval on Twitter and added that they will focus on performance and service.",
      "date": "05 Sep 2022,Monday",
      "id": "b2b8f18ccf2d436186e2c597d6bd01bd",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662398781248_795.jpg?",
      "readMoreUrl": "https://www.moneycontrol.com/news/business/helios-capital-gets-sebis-in-principle-approval-to-launch-mutual-fund-biz-9134741.html/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "11:42 pm",
      "title": "SEBI gives in-principle approval to Helios Capital for mutual fund business",
      "url": "https://www.inshorts.com/en/news/sebi-gives-inprinciple-approval-to-helios-capital-for-mutual-fund-business-1662401531834"
    },
    {
      "author": "Srishty Choudhury",
      "content": "Benchmark indices opened in the green on Tuesday with Sensex rising 300 points to 59,540 and Nifty at 17,747, up by 81 points. NTPC, IndusInd Bank, Reliance, Maruti, PowerGrid and Bharti Airtel were among the major gainers on BSE, while stocks of ITC, Wipro and Nestle India slipped. Buying was seen in power, realty, capital goods and auto stocks.\n",
      "date": "06 Sep 2022,Tuesday",
      "id": "81cc52626cd6482fb62ed159eb420f0b",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/6_tue/img_1662437351173_736.jpg?",
      "readMoreUrl": "https://www.moneycontrol.com/news/business/markets/market-live-updates-sgx-nifty-indicates-a-flat-opening-for-indian-indices-6-9135811.html/amp?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "09:57 am",
      "title": "Sensex jumps 300 points, Nifty above 17,700 in opening trade",
      "url": "https://www.inshorts.com/en/news/sensex-jumps-300-points-nifty-above-17700-in-opening-trade-1662438430837"
    },
    {
      "author": "Dharini Mudgal",
      "content": "Budget carrier SpiceJet needs recapitalisation to keep flying and compete with existing and new airlines, industry watchers reportedly told Livemint. The airline has reportedly said that its board had approved raising up to \u20b92,000 crore amid high fuel prices and depreciation of the rupee. Notably, SpiceJet on Wednesday posted a worse-than-expected net loss of \u20b9789 crore for the April-June quarter.",
      "date": "05 Sep 2022,Monday",
      "id": "42ba26a5d8934aa48e25dcbd381f3d1b",
      "imageUrl": "https://nis-gs.pix.in/inshorts/images/v1/variants/jpg/m/2022/09_sep/5_mon/img_1662383935198_184.jpg?",
      "readMoreUrl": "https://www.hindustantimes.com/business/spicejet-financial-woes-needs-fresh-capital-of-rs-2000-crore-to-continue-flying-101662372495067-amp.html?utm_campaign=fullarticle&utm_medium=referral&utm_source=inshorts ",
      "time": "07:33 pm",
      "title": "SpiceJet needs \u20b92,000 crore to continue flying: Report",
      "url": "https://www.inshorts.com/en/news/spicejet-needs-\u20b92000-crore-to-continue-flying-report-1662386628704"
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
                              "Business",
                              style: TextStyle(
                                color: textBlackColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Here is your business news',
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
