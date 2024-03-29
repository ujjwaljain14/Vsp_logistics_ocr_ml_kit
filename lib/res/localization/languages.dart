
import 'package:get/get.dart';

class Languages extends Translations{

  @override
  Map<String, Map<String, String>> get keys => {
    'en_US' : {
      'profile': 'Profile',
      'account' : 'Account',
      "change" : "Change",
      "language": "Change Language",
      "appearance":"Appearance",
      "change_password": "Change Password",
      "application":"APPLICATION",
      "general":"GENERAL",
      "tnc":"Terms and Conditions",
      "privacy_policy":"Privacy Policy",
      "support":"Help & Support",
      "contact":"Contact Us",
      "logout":"Logout Account",
      'home' :'Home',
      "op_efficiency":"Operational Efficiency",
      "hot_metal":"Hot Metal Ladle",
      "steel_ladle":"Steel Ladle",
      "scrap_pot" : "Scrap Pot",
      "Details":"Details",
      "tracking_details":"Tracking Details",
      "eng": "English",
      "hin": "Hindi",
      "tel": "Telugu",
      "select_language":"Select Language",
      "mtavg":"more than daily average",
      "ltavg":"more than daily average",
      "last_updated":"Last updated on",
      "ladles_transitions":"Ladles in \ntransition state",
      "ladles_passed":"Ladles passed",
      "search":"Search",
      "history":"History",
      "no_records":"No Records Found",
      "processed":"Processed",
      "last_updated_on":"Last Updated on",
      "search_w_ladle_no":"Search with ladle number",
      "get_all_details":"Get all the details you want",
      "ladle_not_found":"Ladle not found",
      "search_w_correct_ladle_no":"Search with correct ladle number",
      "ladle_bold":"LADLE",
      "molten_metal":"Molten Metal",
      "scrap":"Scrap",
      "liq_steel":"Liquid Steel",
      "l_check_point":"Last Check Point",
      "l_station_time":"Last Station Time",
      "ladle_health":"Ladle Health",
      "ladle_taround_time":"Ladle turn around time",
      "ladle_circulation_time":"Ladle Circulation Times",
      "app_version":"App Version",

      'Jan':'Jan',
      'Feb':'Feb',
      'Mar':'Mar',
      'Apr':'Apr',
      'May':'May',
      'June':'June',
      'July':'July',
      'Aug':'Aug',
      'Sept':'Sept',
      'Oct':'Oct',
      'Nov':'Nov',
      'Dec':'Dec',
      'Monday':'Monday',
      'Tuesday':'Tuesday',
      'Wednesday':'Wednesday',
      'Thursday':'Thursday',
      'Friday':'Friday',
      'Saturday':'Saturday',
      'Sunday':'Sunday',

    },
    'hi_IN':{
      'profile': 'प्रोफ़ाइल',
      'account' : 'खाता',
      "change" : "परिवर्तन",
      "language": "भाषा बदलें",
      "appearance":"उपस्थिति",
      "change_password": "पासवर्ड बदलें",
      "application":"आवेदन",
      "general":"सामान्य",
      "tnc":"नियम और शर्तें",
      "privacy_policy":"गोपनीयता नीति",
      "support":"मदद समर्थन",
      "contact":"संपर्क करें",
      "logout":"लॉगआउट खाता",
      'home' : 'होम',
      "op_efficiency":"कार्यकारी कुशलता",
      "hot_metal":"गर्म धातु",
      "steel_ladle":"स्टील की करछुल",
      "scrap_pot" : "स्क्रैप पॉट",
      "Details":"विवरण",
      "tracking_details":"ट्रैकिंग विवरण",
      "eng": "अंग्रेज़ी",
      "hin": "हिंदी",
      "tel": "तेलुगू",
      "select_language":"भाषा चुने",
      "mtavg":"दैनिक औसत से अधिक",
      "ltavg":"दैनिक औसत से कम",
      "last_updated":"अंतिम बार अद्यतन किया गया",
      "ladles_transitions":"करछुल \n संक्रमण अवस्था में",
      "ladles_passed":"करछुल गुजर गए",
      "search":"खोज",
      "history":"इतिहास",
      "no_records":"कोई रिकॉर्ड नहीं मिला",
      "processed":"प्रसंस्कृत",
      "last_updated_on":"अंतिम बार अद्यतन किया गया",
      "search_w_ladle_no":"करछुल नंबर से खोजें",
      "get_all_details":"अपने इच्छित सभी विवरण प्राप्त करें",
      "ladle_not_found":"करछुल नहीं मिला",
      "search_w_correct_ladle_no":"सही करछुल नंबर से खोजें",
      "ladle_bold":"करछुल",
      "molten_metal":"तरल धातु",
      "scrap":"कतरन",
      "liq_steel":"तरल इस्पात",
      "l_check_point":"अंतिम जांच बिंदु",
      "l_station_time":"अंतिम स्टेशन का समय",
      "ladle_health":"करछुल स्वास्थ्य",
      "ladle_taround_time":"करछुल घूमने का समय",
      "ladle_circulation_time":"लैडल सर्कुलेशन टाइम्स",
      "app_version":"एप्लिकेशन वेरीज़न",
      'Jan':'जनवरी',
      'Feb':'फ़रवरी',
      'Mar':'मार्च',
      'Apr':'अप्रैल',
      'May':'मई',
      'June':'जून',
      'July':'जुलाई',
      'Aug':'अगस्त',
      'Sept':'सितम्बर',
      'Oct':'अक्टूबर',
      'Nov':'नवंबर',
      'Dec':'दिसम्बर',
      'Monday':'सोमवार',
      'Tuesday':'मंगलवार',
      'Wednesday':'बुधवार',
      'Thursday':'गुरुवार',
      'Friday':'शुक्रवार',
      'Saturday':'शनिवार',
      'Sunday':'रविवार',
    },
    'te_IN':{
      'profile': 'ప్రొఫైల్',
      'account' : 'ఖాతా',
      "change" : "మార్చండి",
      "language": "భాష మార్చు",
      "appearance":"స్వరూపం",
      "change_password": "పాస్‌వర్డ్ మార్చండి",
      "application":"అప్లికేషన్",
      "general":"సాధారణ",
      "tnc":"నిబంధనలు మరియు షరతులు",
      "privacy_policy":"గోప్యతా విధానం",
      "support":"సహాయం & మద్దతు",
      "contact":"మమ్మల్ని సంప్రదించండి",
      "logout":"లాగ్అవుట్ ఖాతా",
      'home' : 'ఇల్లు',
      "op_efficiency":"నిర్వహణ సామర్ధ్యం",
      "hot_metal":"హాట్ మెటల్",
      "steel_ladle":"స్టీల్ లాడిల్",
      "scrap_pot" : "స్క్రాప్ పాట్",
      "Details":"వివరాలు",
      "tracking_details":"ట్రాకింగ్ వివరాలు",
      "eng": "ఆంగ్ల",
      "hin": "హిందీ",
      "tel": "తెలుగు",
      "select_language":"భాషను ఎంచుకోండి",
      "mtavg":"రోజువారీ సగటు కంటే ఎక్కువ",
      "ltavg":"రోజువారీ సగటు కంటే తక్కువ",
      "last_updated":"చివరిగా నవీకరించబడింది",
      "ladles_transitions":"పరివర్తన స్థితిలో \nలాడల్స్",
      "ladles_passed":"గరిటెలు గడిచాయి",
      "search":"వెతకండి",
      "history":"చరిత్ర",
      "no_records":"ఎటువంటి పత్రాలు లభించలేదు",
      "processed":"ప్రాసెస్ చేయబడింది",
      "last_updated_on":"చివరిగా నవీకరించబడింది",
      "search_w_ladle_no":"లాడిల్ నంబర్‌తో శోధించండి",
      "get_all_details":"మీకు కావలసిన అన్ని వివరాలను పొందండి",
      "ladle_not_found":"గరిటె దొరకలేదు",
      "search_w_correct_ladle_no":"సరైన గరిటె సంఖ్యతో శోధించండి",
      "ladle_bold":"లాడిల్",
      "molten_metal":"కరిగిన మెటల్",
      "scrap":"స్క్రాప్",
      "liq_steel":"లిక్విడ్ స్టీల్",
      "l_check_point":"చివరి చెక్ పాయింట్",
      "l_station_time":"చివరి స్టేషన్ సమయం",
      "ladle_health":"లాడిల్ ఆరోగ్యం",
      "ladle_taround_time":"గరిటె సమయం చుట్టూ తిరగండి",
      "ladle_circulation_time":"లాడిల్ సర్క్యులేషన్ టైమ్స్",
      "app_version":"యాప్ వెర్షన్",

      'Jan':'జనవరి',
      'Feb':'ఫిబ్రవరి',
      'Mar':'మార్చ్',
      'Apr':'ఏప్రిల్',
      'May':'మే',
      'June':'జూన్',
      'July':'జూలై',
      'Aug':'ఆగస్టు',
      'Sept':'సెప్టెంబర్',
      'Oct':'అక్టోబర్',
      'Nov':'నవంబర్',
      'Dec':'డిసెంబర్',
      'Monday':'సోమవారం',
      'Tuesday':'మంగళవారం',
      'Wednesday':'బుధవారం',
      'Thursday':'గురువారం',
      'Friday':'శుక్రవారం',
      'Saturday':'శనివారం',
      'Sunday':'ఆదివారం',
    }
  };

}