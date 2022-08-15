import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'af', 'zu'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? afText = '',
    String? zuText = '',
  }) =>
      [enText, afText, zuText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // onboarding
  {
    '8pztvfov': {
      'en': 'Maintenance Requests',
      'af': '',
      'zu': '',
    },
    '8o26ihu6': {
      'en': 'Please select your student accomadtion',
      'af': '',
      'zu': '',
    },
    '5fjqqbhk': {
      'en': 'Campus Africa',
      'af': 'Teken aan',
      'zu': 'Ngena ngemvume',
    },
    'toce9ejh': {
      'en': 'Rennie House',
      'af': 'Registreer',
      'zu': 'Bhalisa',
    },
    '274gqvvp': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
  },
  // view
  {
    'qglikkox': {
      'en': 'Submitted',
      'af': 'Ingedien',
      'zu': 'Kuthunyelwe',
    },
    'qh48pw7e': {
      'en': 'Search results',
      'af': 'Soek Resultate',
      'zu': 'Imiphumela yosesho',
    },
    'aluf6wqz': {
      'en': 'Delete',
      'af': 'Vee uit',
      'zu': 'Susa',
    },
    'pxqyaoc1': {
      'en': 'Pending',
      'af': 'Hangende',
      'zu': 'Kusalindile',
    },
    's7q3htrz': {
      'en': 'Search results',
      'af': 'Soek Resultate',
      'zu': 'Imiphumela yosesho',
    },
    'drdmllbk': {
      'en': 'Completed',
      'af': 'Voltooi',
      'zu': 'Kuqediwe',
    },
    'woriwezt': {
      'en': 'Search results',
      'af': 'Soek Resultate',
      'zu': 'Imiphumela yosesho',
    },
    'p91jd7i0': {
      'en': 'Submitted',
      'af': 'Ingedien',
      'zu': 'Kuthunyelwe',
    },
    'j40rlfkh': {
      'en': 'Search results',
      'af': 'Soek Resultate',
      'zu': 'Imiphumela yosesho',
    },
    'houlgtyt': {
      'en': 'Complete',
      'af': 'Voltooi',
      'zu': 'Qedela',
    },
    'mv3djtdv': {
      'en': 'Pending',
      'af': 'Hangende',
      'zu': 'Kusalindile',
    },
    'jo4bqud1': {
      'en': 'Search results',
      'af': 'Soek Resultate',
      'zu': 'Imiphumela yosesho',
    },
    'x35hfmcj': {
      'en': 'Reject',
      'af': 'Verwerp',
      'zu': 'Yenqaba',
    },
    'ukvp0ult': {
      'en': 'Complete',
      'af': 'Voltooi',
      'zu': 'Qedela',
    },
    'm9yees0f': {
      'en': 'Completed',
      'af': 'Voltooi',
      'zu': 'Kuqediwe',
    },
    '9rlnx1fb': {
      'en': 'Search results',
      'af': 'Soek Resultate',
      'zu': 'Imiphumela yosesho',
    },
  },
  // chat
  {
    'ecpp8geu': {
      'en': '0',
      'af': '',
      'zu': '',
    },
    '25cdx1l2': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
  },
  // Appliances
  {
    '379z4gvh': {
      'en': 'Appliances',
      'af': 'Toestelle',
      'zu': 'Izinto zikagesi',
    },
    'kk3edzbs': {
      'en': 'Name',
      'af': 'Naam',
      'zu': 'Igama',
    },
    '4fsu6x0m': {
      'en': ' ',
      'af': '',
      'zu': '',
    },
    'nzk8ziaw': {
      'en': 'Issue',
      'af': 'Uitgawe',
      'zu': 'Inkinga',
    },
    'b282kjk3': {
      'en': 'Stove not working',
      'af': 'Stoof werk nie',
      'zu': 'Isitofu asisebenzi',
    },
    'v7swjfni': {
      'en': 'Oven not working',
      'af': 'Oond werk nie',
      'zu': 'Ihhavini ayisebenzi',
    },
    'jdaewo5r': {
      'en': 'Microwave not working',
      'af': 'Mikrogolf werk nie',
      'zu': 'I-microwave ayisebenzi',
    },
    'b8su8jqc': {
      'en': 'Fridge not working',
      'af': 'Yskas werk nie',
      'zu': 'Isiqandisi asisebenzi',
    },
    'jzxq70zt': {
      'en': 'Please select...',
      'af': 'Kies asseblief...',
      'zu': 'Sicela ukhethe...',
    },
    'ujr70769': {
      'en': 'Description',
      'af': 'Beskrywing',
      'zu': 'Incazelo',
    },
    '5mhqusqz': {
      'en': 'Describe your Issue',
      'af': 'Beskryf jou probleem',
      'zu': 'Chaza udaba lwakho',
    },
    'xmb7t2fh': {
      'en': 'Submit',
      'af': 'Indien',
      'zu': 'Thumela',
    },
    'nyf0hs7p': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    'aw66xj2z': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    'jbigh77n': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
  },
  // Plumbing
  {
    'j6exf7im': {
      'en': 'Plumbing',
      'af': 'Loodgieterswerk',
      'zu': 'Amapayipi amanzi',
    },
    'sjfameuq': {
      'en': 'Name',
      'af': 'Naam',
      'zu': 'Igama',
    },
    'hh3kxhi3': {
      'en': ' ',
      'af': '',
      'zu': '',
    },
    '6ydhq6qy': {
      'en': 'Issue',
      'af': 'Uitgawe',
      'zu': 'Inkinga',
    },
    'g1s4b5qt': {
      'en': 'Damaged toilet sit',
      'af': 'Beskadigde toilet sit',
      'zu': 'Indlu yangasese eyonakele',
    },
    'f3r9wayy': {
      'en': 'Damaged basin/sink',
      'af': 'Beskadigde wasbak/wasbak',
      'zu': 'Isitsha/usinki owonakele',
    },
    'uzsclpgj': {
      'en': 'Blocked urinal',
      'af': 'Geblokkeerde urinaal',
      'zu': 'Umchamo ovinjiwe',
    },
    'bcc5cdzk': {
      'en': 'Blocked toilet',
      'af': 'Geblokkeerde toilet',
      'zu': 'Indlu yangasese evinjiwe',
    },
    'jvpf1jfb': {
      'en': 'Blocked shower drain',
      'af': 'Geblokkeerde stortafvoer',
      'zu': 'I-drain yeshawa evinjiwe',
    },
    '4wyw28qg': {
      'en': 'Low water pressure',
      'af': 'Lae waterdruk',
      'zu': 'Umfutho wamanzi ophansi',
    },
    'xglpnog5': {
      'en': 'No cold water',
      'af': 'Geen koue water nie',
      'zu': 'Awekho amanzi abandayo',
    },
    '4ybabfa3': {
      'en': 'No hot water',
      'af': 'Geen warm water nie',
      'zu': 'Awekho amanzi ashisayo',
    },
    'oe2iooc7': {
      'en': 'Shower head needs to be replaced',
      'af': 'Stortkop moet vervang word',
      'zu': 'Ikhanda leshawa lidinga ukushintshwa',
    },
    '1hx0jrbo': {
      'en': 'Leaking gyser',
      'af': 'Lekkende gyser',
      'zu': 'I-gyser evuzayo',
    },
    '0acr9e1x': {
      'en': 'Burst pipes',
      'af': 'Gebarste pype',
      'zu': 'Amapayipi okuqhuma',
    },
    'jecw64w4': {
      'en': 'Please select...',
      'af': 'Kies asseblief...',
      'zu': 'Sicela ukhethe...',
    },
    '221kv5j6': {
      'en': 'Description',
      'af': 'Beskrywing',
      'zu': 'Incazelo',
    },
    'g4jhlicm': {
      'en': 'Describe your Issue',
      'af': 'Beskryf jou probleem',
      'zu': 'Chaza udaba lwakho',
    },
    '9hwlv2m7': {
      'en': 'Submit',
      'af': 'Indien',
      'zu': 'Thumela',
    },
    'x51gr9yz': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    'h85e3ygq': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    '856ubjjv': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
  },
  // Furniture
  {
    'zsoxcckp': {
      'en': 'Furniture',
      'af': 'Meubels',
      'zu': 'Ifenisha',
    },
    'rjplwfib': {
      'en': 'Name',
      'af': 'Naam',
      'zu': 'Igama',
    },
    'ev3xlq8h': {
      'en': ' ',
      'af': '',
      'zu': '',
    },
    'ri3brf64': {
      'en': 'Issue',
      'af': 'Uitgawe',
      'zu': 'Inkinga',
    },
    '8qnmznb2': {
      'en': 'Damaged bed base',
      'af': 'Beskadigde bedbasis',
      'zu': 'Isisekelo sombhede sonakele',
    },
    'dcliexha': {
      'en': 'Damaged mattress',
      'af': 'Beskadigde matras',
      'zu': 'Umatilasi owonakele',
    },
    'ctzwfb5g': {
      'en': 'Curtain rail needs to be replaced',
      'af': 'Gordynreling moet vervang word',
      'zu': 'I-Curtain rail idinga ukushintshwa',
    },
    'eftivozm': {
      'en': 'Damaged study table',
      'af': 'Beskadigde studietafel',
      'zu': 'Ithebula lokufunda elilimele',
    },
    '6xd65swp': {
      'en': 'Damaged chair',
      'af': 'Beskadigde stoel',
      'zu': 'Isitulo esilimele',
    },
    'fie5oy0p': {
      'en': 'Window cannot open',
      'af': 'Venster kan nie oopmaak nie',
      'zu': 'Iwindi alikwazi ukuvuleka',
    },
    'nzm86etj': {
      'en': 'Window cannot close',
      'af': 'Venster kan nie toemaak nie',
      'zu': 'Iwindi alikwazi ukuvala',
    },
    'enx6owqa': {
      'en': 'Please select...',
      'af': 'Kies asseblief...',
      'zu': 'Sicela ukhethe...',
    },
    'y0ee0fcm': {
      'en': 'Description',
      'af': 'Beskrywing',
      'zu': 'Incazelo',
    },
    'hqui642d': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'smqtfo79': {
      'en': 'Describe your Issue',
      'af': 'Beskryf jou probleem',
      'zu': 'Chaza udaba lwakho',
    },
    'ezxqytym': {
      'en': 'Submit',
      'af': 'Indien',
      'zu': 'Thumela',
    },
    'j5cpjyau': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    'fut8j40g': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    'txkmcvkb': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
  },
  // Electrical
  {
    '5h10vla4': {
      'en': 'Electrical',
      'af': 'Elektries',
      'zu': 'Ezogesi',
    },
    'pptn41hq': {
      'en': 'Name',
      'af': 'Naam',
      'zu': 'Igama',
    },
    'snmjv58b': {
      'en': ' ',
      'af': '',
      'zu': '',
    },
    'o96uncwm': {
      'en': 'Issue',
      'af': 'Uitgawe',
      'zu': 'Inkinga',
    },
    'ynegaw02': {
      'en': 'Emergency lights not working',
      'af': 'Noodligte werk nie',
      'zu': 'Izibani eziphuthumayo azisebenzi',
    },
    'nlauvg3m': {
      'en': 'Loose cables',
      'af': 'Los kabels',
      'zu': 'Izintambo ezixegayo',
    },
    'exk8o1zs': {
      'en': 'No power/electricity',
      'af': 'Geen krag/elektrisiteit',
      'zu': 'Awekho amandla/ugesi',
    },
    '3ellrjbp': {
      'en': 'Faulty prepaid meter',
      'af': 'Foutiewe voorafbetaalde meter',
      'zu': 'Imitha ekhokhelwa ngaphambili enephutha',
    },
    '8u8v7nrs': {
      'en': 'Lights in my room are not working',
      'af': 'Ligte in my kamer werk nie',
      'zu': 'Izibani ekamelweni lami azisebenzi',
    },
    'u216hxi3': {
      'en': 'Lights in my unit are not working',
      'af': 'Ligte in my eenheid werk nie',
      'zu': 'Izibani kuyunithi yami azisebenzi',
    },
    'ewgrtjnb': {
      'en': 'Please select...',
      'af': 'Kies asseblief...',
      'zu': 'Sicela ukhethe...',
    },
    'lvbcdupg': {
      'en': 'Description',
      'af': 'Beskrywing',
      'zu': 'Incazelo',
    },
    '41omkw7r': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'oqw7x9ak': {
      'en': 'Describe your Issue',
      'af': 'Beskryf jou probleem',
      'zu': 'Chaza udaba lwakho',
    },
    'cb9hr1xq': {
      'en': 'Submit',
      'af': 'Indien',
      'zu': 'Thumela',
    },
    'u3d47e3d': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    'o3r0rwcy': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    'm8no2npe': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
  },
  // Locksmith
  {
    'zkpr0gnw': {
      'en': 'Locksmith',
      'af': 'Slotmaker',
      'zu': 'Umkhandi wezikhiye',
    },
    's3eqlhy0': {
      'en': 'Name',
      'af': 'Naam',
      'zu': 'Igama',
    },
    'poroii6k': {
      'en': ' ',
      'af': '',
      'zu': '',
    },
    '5mh6yhav': {
      'en': 'Issue',
      'af': 'Uitgawe',
      'zu': 'Inkinga',
    },
    '2ovvpyjh': {
      'en': 'Broken door handle (unit)',
      'af': 'Gebreekte deurhandvatsel (eenheid)',
      'zu': 'Isibambo somnyango esiphukile (iyunithi)',
    },
    'aiwyw4j6': {
      'en': 'Broken door handle (Room)',
      'af': 'Gebreekte deurhandvatsel (kamer)',
      'zu': 'Isibambo somnyango esiphukile (Igumbi)',
    },
    'lz8ylm9y': {
      'en': 'Room key not opening',
      'af': 'Kamersleutel maak nie oop nie',
      'zu': 'Ukhiye wegumbi awuvuli',
    },
    '4k1n19qm': {
      'en': 'Unit key not opening',
      'af': 'Eenheidsleutel maak nie oop nie',
      'zu': 'Ukhiye weyunithi awuvuli',
    },
    'oqlc0lzx': {
      'en': 'Lost key',
      'af': 'Sleutel verloor',
      'zu': 'Ukhiye olahlekile',
    },
    'mw548crh': {
      'en': 'Lost access card',
      'af': 'Toegangskaart verloor',
      'zu': 'Ikhadi lokufinyelela elilahlekile',
    },
    'rdiv127k': {
      'en': 'access card not working',
      'af': 'toegangskaart werk nie',
      'zu': 'ikhadi lokufinyelela alisebenzi',
    },
    'a0pmib1g': {
      'en': 'Please select...',
      'af': 'Kies asseblief...',
      'zu': 'Sicela ukhethe...',
    },
    'pkd6jbzq': {
      'en': 'Description',
      'af': 'Beskrywing',
      'zu': 'Incazelo',
    },
    '90cp2ji5': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'olb70f7m': {
      'en': 'Describe your Issue',
      'af': 'Beskryf jou probleem',
      'zu': 'Chaza udaba lwakho',
    },
    'ekzi7ay8': {
      'en': 'Submit',
      'af': 'Indien',
      'zu': 'Thumela',
    },
    '02ud1qup': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    '01ba5isz': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    '8ufczwdz': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
  },
  // Pestcontrol
  {
    'b74aucol': {
      'en': 'Pest control',
      'af': 'Plaagbeheer',
      'zu': 'Ukulawula izinambuzane',
    },
    'fbciwrr6': {
      'en': 'Name',
      'af': 'Naam',
      'zu': 'Igama',
    },
    '0bgptks9': {
      'en': ' ',
      'af': '',
      'zu': '',
    },
    '0jz4q5zl': {
      'en': 'Issue',
      'af': 'Uitgawe',
      'zu': 'Inkinga',
    },
    'f6kpyccf': {
      'en': 'Bed bugs',
      'af': 'Bed goggas',
      'zu': 'Izimbungulu zombhede',
    },
    'dzczcupp': {
      'en': 'Cockroaches in my room/unit',
      'af': 'Kakkerlakke in my kamer/eenheid',
      'zu': 'Amaphela egumbini/eyunithi yami',
    },
    '1kiwva5p': {
      'en': 'Fumigation required',
      'af': 'Beroking vereis',
      'zu': 'Ukufuthwa kuyadingeka',
    },
    'k0qus04q': {
      'en': 'Please select...',
      'af': 'Kies asseblief...',
      'zu': 'Sicela ukhethe...',
    },
    '3spt7ujg': {
      'en': 'Description',
      'af': 'Beskrywing',
      'zu': 'Incazelo',
    },
    'men9xdlg': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'khtkq8d8': {
      'en': 'Describe your Issue',
      'af': 'Beskryf jou probleem',
      'zu': 'Chaza udaba lwakho',
    },
    'rb1krgbn': {
      'en': 'Submit',
      'af': 'Indien',
      'zu': 'Thumela',
    },
    'oq45egd2': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    '1rvpi8sr': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    'xr7g3ufx': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
  },
  // painting
  {
    'fpnywby9': {
      'en': 'Painting',
      'af': 'Skildery',
      'zu': 'Ukudweba',
    },
    'y45hko9v': {
      'en': 'Name',
      'af': 'Naam',
      'zu': 'Igama',
    },
    'a4x8dzml': {
      'en': ' ',
      'af': '',
      'zu': '',
    },
    'sxw0xvkr': {
      'en': 'Issue',
      'af': 'Uitgawe',
      'zu': 'Inkinga',
    },
    'b49kwxxn': {
      'en': 'Ceiling needs to be painted',
      'af': 'Die plafon moet geverf word',
      'zu': 'Uphahla ludinga ukupendwa',
    },
    'xcjd2ohv': {
      'en': 'Door frame needs to be painted',
      'af': 'Deurkosyn moet geverf word',
      'zu': 'Uhlaka lomnyango ludinga ukupendwa',
    },
    'hn0l9gtd': {
      'en': 'Skirting needs to be painted',
      'af': 'Plint moet geverf word',
      'zu': 'I-Skirting idinga ukupendwa',
    },
    '73kygpgt': {
      'en': 'Walls needs to be painted',
      'af': 'Mure moet geverf word',
      'zu': 'Izindonga zidinga ukupendwa',
    },
    '99fpkv1q': {
      'en': 'Window frames needs to be painted',
      'af': 'Vensterrame moet geverf word',
      'zu': 'Amawindi ozimele adinga ukupendwa',
    },
    'r8v9zom9': {
      'en': 'Please select...',
      'af': 'Kies asseblief...',
      'zu': 'Sicela ukhethe...',
    },
    '9yycc0gq': {
      'en': 'Description',
      'af': 'Beskrywing',
      'zu': 'Incazelo',
    },
    'al4s42e8': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'i0vecmyv': {
      'en': 'Describe your Issue',
      'af': 'Beskryf jou probleem',
      'zu': 'Chaza udaba lwakho',
    },
    'c9brkjw1': {
      'en': 'Submit',
      'af': 'Indien',
      'zu': 'Thumela',
    },
    '6w71dv82': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    'qow9mldr': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    '20b96ira': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
  },
  // Others
  {
    '2ytiwh02': {
      'en': 'Other',
      'af': 'Ander',
      'zu': 'Okunye',
    },
    'crrao6ih': {
      'en': 'Name',
      'af': 'Naam',
      'zu': 'Igama',
    },
    'xi810ac6': {
      'en': ' ',
      'af': '',
      'zu': '',
    },
    '8jet81fh': {
      'en': 'Issue',
      'af': 'Uitgawe',
      'zu': 'Inkinga',
    },
    '6hpt9krn': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'gn9nsu4y': {
      'en': 'Describe your Issue',
      'af': 'Beskryf jou probleem',
      'zu': 'Chaza udaba lwakho',
    },
    'joeg6jq5': {
      'en': 'Submit',
      'af': 'Indien',
      'zu': 'Thumela',
    },
    'ehaqct9t': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    '6wg4lijw': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    'ocnpeou8': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
  },
  // Communal
  {
    '98jt63cp': {
      'en': 'Communal',
      'af': 'Gemeenskaplik',
      'zu': 'Umphakathi',
    },
    '7nmev92l': {
      'en': 'Name',
      'af': 'Naam',
      'zu': 'Igama',
    },
    'yiv2vl4e': {
      'en': ' ',
      'af': '',
      'zu': '',
    },
    'ugqlruzv': {
      'en': 'Issue',
      'af': 'Uitgawe',
      'zu': 'Inkinga',
    },
    'cc9f1k6t': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'z5y4ns8r': {
      'en': 'Describe your Issue',
      'af': 'Beskryf jou probleem',
      'zu': 'Chaza udaba lwakho',
    },
    'lcbjrhc4': {
      'en': 'Place',
      'af': 'Plek',
      'zu': 'Indawo',
    },
    'j24y4cmn': {
      'en': 'Place',
      'af': 'Plek',
      'zu': 'Indawo',
    },
    'i8tc74up': {
      'en': '',
      'af': '',
      'zu': '',
    },
    '9ve9st0h': {
      'en': 'Submit',
      'af': 'Indien',
      'zu': 'Thumela',
    },
    'u74d156v': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    'yet5n963': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    'xzvk0uft': {
      'en': 'Field is required',
      'af': 'Veld word vereis',
      'zu': 'Inkambu iyadingeka',
    },
    '7pzgv1i8': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
  },
  // reviews
  {
    'o4ma2plr': {
      'en': 'Review',
      'af': 'Resensie',
      'zu': 'Buyekeza',
    },
    'nue7hmbx': {
      'en': 'Private Feedback',
      'af': 'Privaat terugvoer',
      'zu': 'Impendulo Eyimfihlo',
    },
    'f0a17uw3': {
      'en': 'What was your most important concern with this  ticket?',
      'af': 'Wat was jou belangrikste bekommernis met hierdie kaartjie?',
      'zu': 'Yini ebikukhathaza kakhulu ngaleli thikithi?',
    },
    'ybcbwm1i': {
      'en': 'Time',
      'af': 'Tyd',
      'zu': 'Isikhathi',
    },
    'vgaq63ck': {
      'en': 'Convinience',
      'af': 'Gerieflikheid',
      'zu': 'Convinience',
    },
    'k2xrlel8': {
      'en': 'Cleanliness',
      'af': 'Netheid',
      'zu': 'Inhlanzeko',
    },
    '5pxlh7vy': {
      'en': 'Communication',
      'af': 'Kommunikasie',
      'zu': 'Ukuxhumana',
    },
    '64xwk2np': {
      'en': 'Quality',
      'af': 'Kwaliteit',
      'zu': 'Ikhwalithi',
    },
    '46wrpftb': {
      'en': 'Option ',
      'af': 'Opsie',
      'zu': 'Inketho',
    },
    '1a53aof6': {
      'en': 'Anything you\'d like us to know?\n(optional)',
      'af': 'Enigiets wat jy wil hê ons moet weet? (opsioneel)',
      'zu': 'Kukhona ongathanda ukuthi sikwazi? (uyazikhethela)',
    },
    'xl2xx87x': {
      'en':
          'Your rating is really important for us as it helps us to improve our services for the future.',
      'af':
          'Jou gradering is baie belangrik vir ons aangesien dit ons help om ons dienste vir die toekoms te verbeter.',
      'zu':
          'Isilinganiso sakho sibaluleke ngempela kithi njengoba sisisiza ukuthuthukisa amasevisi ethu esikhathini esizayo.',
    },
    'smcvgq4y': {
      'en': 'Confirm',
      'af': 'Bevestig',
      'zu': 'Qinisekisa',
    },
    'v4ofqfkx': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
  },
  // profile
  {
    'g43mgqae': {
      'en': 'Edit Profile',
      'af': 'Wysig profiel',
      'zu': 'Hlela iphrofayela',
    },
    'rw5e2vog': {
      'en': 'Save',
      'af': 'Stoor',
      'zu': 'Londoloza',
    },
    '6msvlja5': {
      'en': 'Full names',
      'af': 'Volle name',
      'zu': 'Amagama aphelele',
    },
    '8dlglvl5': {
      'en': 'Email Address',
      'af': 'E-pos adres',
      'zu': 'Ikheli le-imeyili',
    },
    't9sxcrc0': {
      'en': 'Password',
      'af': 'Wagwoord',
      'zu': 'Iphasiwedi',
    },
    '8kmnezli': {
      'en': 'Password',
      'af': 'Wagwoord',
      'zu': 'Iphasiwedi',
    },
    'hd9hczn6': {
      'en': 'Bio',
      'af': 'Bio',
      'zu': 'I-Bio',
    },
    '6pf3wb9n': {
      'en': 'Write about yourself...',
      'af': 'Skryf oor jouself...',
      'zu': 'Bhala ngawe...',
    },
    'rwaeignd': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
  },
  // settings
  {
    '455h835o': {
      'en': 'Settings',
      'af': 'Instellings',
      'zu': 'Izilungiselelo',
    },
    'do7rbv9c': {
      'en': 'Account',
      'af': 'Rekening',
      'zu': 'I-akhawunti',
    },
    '4uz83n0n': {
      'en': 'Messages',
      'af': 'Boodskappe',
      'zu': 'Imilayezo',
    },
    'h9k66p5d': {
      'en': 'Appearance',
      'af': 'Voorkoms',
      'zu': 'Ukubukeka',
    },
    '29eie85n': {
      'en': 'Checklist',
      'af': 'Kontrolelys',
      'zu': 'Uhlu lokuhlola',
    },
    '8rm2joof': {
      'en': 'Notifications',
      'af': 'Kennisgewings',
      'zu': 'Izaziso',
    },
    'gyeyp322': {
      'en': 'Language',
      'af': 'Taal',
      'zu': 'Ulimi',
    },
    'clle2j5c': {
      'en': 'About us',
      'af': 'Oor ons',
      'zu': 'Mayelana NATHI',
    },
    'frmn718q': {
      'en': 'Logout',
      'af': 'Teken uit',
      'zu': 'Phuma',
    },
    'ugb9k6b5': {
      'en': '',
      'af': '',
      'zu': '',
    },
  },
  // home
  {
    '2koevdog': {
      'en': 'Hello World',
      'af': 'Hello Wêreld',
      'zu': 'Sawubona Mhlaba',
    },
    '0vs51h5t': {
      'en': '1',
      'af': '1',
      'zu': '1',
    },
    'pmvue1v1': {
      'en': 'Hi,',
      'af': 'Hi,',
      'zu': 'Sawubona,',
    },
    '8ih9im8a': {
      'en': ' ',
      'af': '1',
      'zu': '1',
    },
    'kio6wtr0': {
      'en': 'Appliances',
      'af': 'Toestelle',
      'zu': 'Izinto zikagesi',
    },
    '1rfe0xpc': {
      'en': 'Plumbing',
      'af': 'Loodgieterswerk',
      'zu': 'Amapayipi amanzi',
    },
    'wq0kyint': {
      'en': 'Electrical',
      'af': 'Elektries',
      'zu': 'Ezogesi',
    },
    '4oirn1hi': {
      'en': 'Painting',
      'af': 'Skildery',
      'zu': 'Ukudweba',
    },
    'gb7cjba5': {
      'en': 'Locksmith',
      'af': 'Slotmaker',
      'zu': 'Umkhandi wezikhiye',
    },
    '5apgpz66': {
      'en': 'Furniture',
      'af': 'Meubels',
      'zu': 'Ifenisha',
    },
    '88a17nqi': {
      'en': 'Communal',
      'af': 'Gemeenskaplik',
      'zu': 'Umphakathi',
    },
    'lnhucv5s': {
      'en': 'Others',
      'af': 'Ander',
      'zu': 'Abanye',
    },
  },
  // messages
  {
    't95vbdij': {
      'en': 'Inbox',
      'af': 'Inkassie',
      'zu': 'Ibhokisi lokungenayo',
    },
  },
  // moreInformation
  {
    '2ryll3yt': {
      'en': '1',
      'af': '1',
      'zu': '1',
    },
    'o50nlx6w': {
      'en': 'Details',
      'af': 'Besonderhede',
      'zu': 'Imininingwane',
    },
    '4k2n3lb1': {
      'en': 'Category',
      'af': 'Kategorie',
      'zu': 'Isigaba',
    },
    'zts8bgrg': {
      'en': 'Status',
      'af': 'Status',
      'zu': 'Isimo',
    },
    'en4xg6q6': {
      'en': 'Assigned',
      'af': 'Toegewys',
      'zu': 'Kwabelwe',
    },
    'l6m238ct': {
      'en': 'View Ratings',
      'af': 'Bekyk graderings',
      'zu': 'Buka Izilinganiso',
    },
    'tgz3qqlo': {
      'en': 'Private Feedback',
      'af': 'Privaat terugvoer',
      'zu': 'Impendulo Eyimfihlo',
    },
    'g552thl8': {
      'en': 'What was your most important concern with this  ticket?',
      'af': 'Wat was jou belangrikste bekommernis met hierdie kaartjie?',
      'zu': 'Yini ebikukhathaza kakhulu ngaleli thikithi?',
    },
    '981rkzjs': {
      'en': 'Time',
      'af': 'Tyd',
      'zu': 'Isikhathi',
    },
    '4p4vtzxi': {
      'en': 'Convinience',
      'af': 'Gerieflikheid',
      'zu': 'Convinience',
    },
    'ddcsfbo2': {
      'en': 'Cleanliness',
      'af': 'Netheid',
      'zu': 'Inhlanzeko',
    },
    'p7lvsn7w': {
      'en': 'Communication',
      'af': 'Kommunikasie',
      'zu': 'Ukuxhumana',
    },
    '6ndyyf67': {
      'en': 'Quality',
      'af': 'Kwaliteit',
      'zu': 'Ikhwalithi',
    },
    'duis7tvm': {
      'en': 'Option ',
      'af': 'Opsie',
      'zu': 'Inketho',
    },
    'ro31h0z6': {
      'en':
          'Your rating is really important for us as it helps us to improve our services for the future.',
      'af':
          'Jou gradering is baie belangrik vir ons aangesien dit ons help om ons dienste vir die toekoms te verbeter.',
      'zu':
          'Isilinganiso sakho sibaluleke ngempela kithi njengoba sisisiza ukuthuthukisa amasevisi ethu esikhathini esizayo.',
    },
    'ynz0dqc5': {
      'en': 'Comments',
      'af': 'Kommentaar',
      'zu': 'Amazwana',
    },
    '8z1kpy7m': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
  },
  // notifications
  {
    '45q9r5x8': {
      'en': 'Notifications',
      'af': 'Kennisgewings',
      'zu': 'Izaziso',
    },
    '21r1cns5': {
      'en': '1',
      'af': '1',
      'zu': '1',
    },
    '7xadpfse': {
      'en': 'Latest',
      'af': 'Nuutste',
      'zu': 'Okwakamuva',
    },
    't43thx66': {
      'en': 'Following',
      'af': 'Volgende',
      'zu': 'Ukulandela',
    },
    '9npa5ulh': {
      'en': 'All',
      'af': 'Almal',
      'zu': 'Konke',
    },
  },
  // users
  {
    '1ehqp1x6': {
      'en': 'Contacts',
      'af': 'Soek vriende om te gesels',
      'zu': 'Sesha Abangane ukuze uxoxe',
    },
    'r4fzyodn': {
      'en': 'Search Contacts',
      'af': 'Soek kontakte',
      'zu': 'Sesha Oxhumana Nabo',
    },
    'n8jk3buj': {
      'en': 'Search',
      'af': 'Soek',
      'zu': 'Sesha',
    },
    'qd4t4laz': {
      'en': 'Search Contacts',
      'af': 'Soek kontakte',
      'zu': 'Sesha Oxhumana Nabo',
    },
  },
  // rennieHouse
  {
    '7d9npnge': {
      'en': 'Sign In',
      'af': 'Meld aan',
      'zu': 'Ngena ngemvume',
    },
    'eqeznbmv': {
      'en': '',
      'af': 'Voer Student Jou E-pos in',
      'zu': 'Faka I-imeyili Yakho Yomfundi',
    },
    'uzqhsqdx': {
      'en': 'Enter Student Your Email',
      'af': 'Voer Student Jou E-pos in',
      'zu': 'Faka I-imeyili Yakho Yomfundi',
    },
    '64zcojho': {
      'en': '',
      'af': 'Sleutel jou wagwoord in',
      'zu': 'Faka Iphasiwedi Yakho',
    },
    'uvln4uf1': {
      'en': 'Enter Your Password',
      'af': 'Sleutel jou wagwoord in',
      'zu': 'Faka Iphasiwedi Yakho',
    },
    'qpchz9eu': {
      'en': 'Sign In',
      'af': 'Meld aan',
      'zu': 'Ngena ngemvume',
    },
    'q4lawgu8': {
      'en': 'Forgot Password?',
      'af': 'Wagwoord vergeet?',
      'zu': 'Ukhohlwe iphasiwedi?',
    },
    'er7sgpgy': {
      'en': 'Sign Up',
      'af': 'Teken aan',
      'zu': 'Bhalisela',
    },
    '9tv6w7u5': {
      'en': '',
      'af': 'Voer Student Jou E-pos in',
      'zu': 'Faka I-imeyili Yakho Yomfundi',
    },
    'jyfybbum': {
      'en': 'Enter Student Your Email',
      'af': 'Voer Student Jou E-pos in',
      'zu': 'Faka I-imeyili Yakho Yomfundi',
    },
    'oacgyvwn': {
      'en': 'Create account',
      'af': 'Skep rekening',
      'zu': 'Yenza i-akhawunti',
    },
    'u813ecoc': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
  },
  // campusAfrica
  {
    'wv6la93j': {
      'en': 'Sign In',
      'af': 'Meld aan',
      'zu': 'Ngena ngemvume',
    },
    'jkwac95w': {
      'en': '',
      'af': 'Voer Student Jou E-pos in',
      'zu': 'Faka I-imeyili Yakho Yomfundi',
    },
    't9ffbz5k': {
      'en': 'Enter Student Your Email',
      'af': 'Voer Student Jou E-pos in',
      'zu': 'Faka I-imeyili Yakho Yomfundi',
    },
    'gai7k2l8': {
      'en': '',
      'af': 'Sleutel jou wagwoord in',
      'zu': 'Faka Iphasiwedi Yakho',
    },
    'n0uctbe1': {
      'en': 'Enter Your Password',
      'af': 'Sleutel jou wagwoord in',
      'zu': 'Faka Iphasiwedi Yakho',
    },
    'jwfek3mr': {
      'en': 'Sign In',
      'af': 'Meld aan',
      'zu': 'Ngena ngemvume',
    },
    'adnmfwgw': {
      'en': 'Forgot Password?',
      'af': 'Wagwoord vergeet?',
      'zu': 'Ukhohlwe iphasiwedi?',
    },
    'qx44qith': {
      'en': 'Sign Up',
      'af': 'Teken aan',
      'zu': 'Bhalisela',
    },
    'h9ck9o5u': {
      'en': '',
      'af': 'Voer Student Jou E-pos in',
      'zu': 'Faka I-imeyili Yakho Yomfundi',
    },
    'iljy0jtl': {
      'en': 'Enter Student Your Email',
      'af': 'Voer Student Jou E-pos in',
      'zu': 'Faka I-imeyili Yakho Yomfundi',
    },
    '2mhmng0f': {
      'en': 'Create account',
      'af': 'Skep rekening',
      'zu': 'Yenza i-akhawunti',
    },
    '0tkhd42r': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
  },
  // submittedIcon
  {
    'ua7ubrzs': {
      'en': 'Success!',
      'af': 'Sukses!',
      'zu': 'Impumelelo!',
    },
    'eelep3l0': {
      'en':
          'Your request has been received\nby the Campus Africa maintenance\nteam.',
      'af': 'Jou versoek is deur die Campus Africa-instandhoudingspan ontvang.',
      'zu': 'Isicelo sakho sitholwe yithimba elinakekela i-Campus Africa.',
    },
    '6vhy0doc': {
      'en': 'Continue',
      'af': 'Aanhou',
      'zu': 'Qhubeka',
    },
  },
  // emptyList
  {
    'cf85lsih': {
      'en': 'No results were found from your search.\nPlease try again.',
      'af':
          'Geen resultate is van jou soektog gevind nie. Probeer asseblief weer.',
      'zu':
          'Ayikho imiphumela etholakele oseshweni lwakho. Ngicela uzame futhi.',
    },
  },
  // darkMode
  {
    '1ni48z6d': {
      'en': 'Light theme',
      'af': 'Ligte tema',
      'zu': 'Itimu ekhanyayo',
    },
    'lhga9n6k': {
      'en': 'Dark theme',
      'af': 'Donker tema',
      'zu': 'Itimu emnyama',
    },
    'cgkby2zl': {
      'en': 'From device settings',
      'af': 'Van toestelinstellings',
      'zu': 'Kusuka kuzilungiselelo zedivayisi',
    },
  },
  // language
  {
    'oyqbh7ii': {
      'en': 'Afrikaans',
      'af': 'Afrikaans',
      'zu': 'IsiBhunu',
    },
    'i29v1v2d': {
      'en': 'English',
      'af': 'Engels',
      'zu': 'IsiNgisi',
    },
    'anp7mqim': {
      'en': 'Zulu',
      'af': 'Zoeloe',
      'zu': 'Zulu',
    },
  },
  // btmNv
  {
    '5ic4299a': {
      'en': 'Inbox',
      'af': 'Inkassie',
      'zu': 'Ibhokisi lokungenayo',
    },
    'yxwgnmwc': {
      'en': 'Report',
      'af': 'Rapporteer',
      'zu': 'Bika',
    },
    'r0blr3r7': {
      'en': 'Settings',
      'af': 'Instellings',
      'zu': 'Izilungiselelo',
    },
  },
  // sideNav
  {
    'x0l4kq51': {
      'en': 'Campus Africa',
      'af': 'Kampus Afrika',
      'zu': 'Ikhampasi Afrika',
    },
    'mdh6tpe4': {
      'en': 'MENU',
      'af': 'SPYSKAART',
      'zu': 'IMENU',
    },
    'kw4npc6y': {
      'en': 'Home',
      'af': 'Tuis',
      'zu': 'Ikhaya',
    },
    'qa3se4pd': {
      'en': 'View Requests',
      'af': 'Bekyk versoeke',
      'zu': 'Buka Izicelo',
    },
    'j8681eie': {
      'en': 'Messages',
      'af': 'Boodskappe',
      'zu': 'Imilayezo',
    },
    '1ifk0xp2': {
      'en': 'Users',
      'af': 'Gebruikers',
      'zu': 'Abasebenzisi',
    },
    'ep2r2in9': {
      'en': 'ADVANCED SETTINGS',
      'af': 'GEVORDERDE INSTELLINGS',
      'zu': 'IZILUNGISELELO EZITHUTHUKILE',
    },
    'vblitw5u': {
      'en': 'Notifications',
      'af': 'Kennisgewings',
      'zu': 'Izaziso',
    },
    'f638xly7': {
      'en': 'Settings',
      'af': 'Instellings',
      'zu': 'Izilungiselelo',
    },
    'hpde03g2': {
      'en': 'Logout',
      'af': 'Teken uit',
      'zu': 'Phuma',
    },
  },
  // bottomNavBar
  {
    'sol4e3xb': {
      'en': 'Inbox',
      'af': 'Inkassie',
      'zu': 'Ibhokisi lokungenayo',
    },
    '1vi6g268': {
      'en': 'Report',
      'af': 'Rapporteer',
      'zu': 'Bika',
    },
    'y8l90vi9': {
      'en': 'Settings',
      'af': 'Instellings',
      'zu': 'Izilungiselelo',
    },
    'dyx56i25': {
      'en': '',
      'af': '',
      'zu': '',
    },
  },
  // Miscellaneous
  {
    'lvpj234m': {
      'en':
          'Enable access so you can take photos of your maintenance reports and update your profile picture.',
      'af':
          'Aktiveer toegang sodat jy foto&#39;s van jou instandhoudingsverslae kan neem en jou profielfoto kan opdateer.',
      'zu':
          'Nika amandla ukufinyelela ukuze ukwazi ukuthatha izithombe zemibiko yakho yokulungisa futhi ubuyekeze isithombe sakho sephrofayela.',
    },
    'tpjlcilr': {
      'en':
          'Let Campus Africa access your library so you can upload photos to your maintenance reports and update your profile picture',
      'af':
          'Laat Campus Africa toegang tot jou biblioteek sodat jy foto&#39;s na jou instandhoudingsverslae kan oplaai en jou profielfoto kan opdateer',
      'zu':
          'Vumela i-Campus Africa ifinyelele umtapo wakho wolwazi ukuze ukwazi ukulayisha izithombe emibikweni yakho yokulungisa futhi ubuyekeze isithombe sakho sephrofayela',
    },
    'uo3dfuv5': {
      'en': '',
      'af': '',
      'zu': '',
    },
    '0oulxlkm': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'xjjji9rx': {
      'en': '',
      'af': '',
      'zu': '',
    },
    '961yscwv': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'agtamtgc': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'nkzdpl8c': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'r9k8vtxj': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'zd5kzz0m': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'tt9qlhvb': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'zd4vyvrw': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'z40c2u6r': {
      'en': 'File Uploaded!',
      'af': 'Lêer opgelaai!',
      'zu': 'Ifayela Lilayishiwe!',
    },
    'gpuitegy': {
      'en': '',
      'af': '',
      'zu': '',
    },
    '7rz9brmh': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'op5eft6x': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'pkybakmu': {
      'en': '',
      'af': '',
      'zu': '',
    },
    '4bfkhv86': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'zxholu79': {
      'en': '',
      'af': '',
      'zu': '',
    },
    '82ragmeh': {
      'en': '',
      'af': '',
      'zu': '',
    },
    '6z8c56bm': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'pjyanqy2': {
      'en': '',
      'af': '',
      'zu': '',
    },
    'h2dm6i3z': {
      'en': '',
      'af': '',
      'zu': '',
    },
  },
].reduce((a, b) => a..addAll(b));
