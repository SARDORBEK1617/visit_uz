class TravelPlace {
  TravelPlace({
    required this.name,
    required this.user,
    required this.imagesUrl,
    this.id = '',
    this.description = '',
    this.locationDesc = '',
    this.statusTag = StatusTag.popular,
    this.shared = 0,
    this.likes = 0,

  });

  final String id;
  final String name;
  final TravelUser user;
  final StatusTag statusTag;
  final int shared;
  final int likes;
  final String locationDesc;
  final String description;
  final List<String> imagesUrl;

  static final places = [
    TravelPlace(
      id: '1',
      name: 'Toshkent',
      likes: 500,
      shared: 240,
      description:
          '  Toshkent — Oʻzbekistonning poytaxti va eng yirik shahardir, shuningdek,aholisi boʻyicha Markaziy Osiyodagi eng yirik qadimiy shaharlardan biridir.Bu shahar Oʻzbekistonning shimoli-sharqiy qismida, Qozogʻiston bilanchegaraga yaqin qismda joylashgan boʻlib, maydoni 334,8 km2 (129.3 2)ni tashkil etadi. 2021-yilgi maʼlumotlarga koʻra, Toshkent aholisi 2 694 400 nafarni yoki Oʻzbekiston aholisining qariyb 8% ni tashkil etadi. 2018-yilga koʻra, Toshkent shahrining YIM \$2,74 milliardni tashkil etadi va bu koʻrsatkich Oʻzbekistondagi eng katta YIMga ega shahar boʻlib kelmoqda .\nHozirgi kunda, mustaqil Oʻzbekiston poytaxti sifatida, Toshkentda koʻp millatli aholi bor, ular orasida etnik oʻzbeklar va qozoqlar koʻpchilikni tashkil qiladi. 2009-yilda Toshkentning 2200 yilligi nishonlandi. Bu munosabat bilan shahar infra va transport tizimi yangilandi.',
      imagesUrl: [
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/Tashkent1.jpg?alt=media&token=f94da53d-68c1-449b-86e3-e40f681ed547',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/Tashkent.jpg?alt=media&token=efe2ea0b-789b-4c85-836a-89558d323155',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/Uzbekistan1.jpg?alt=media&token=5aade6c8-1f5c-4616-abbe-a134beff9867',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/53c0e28206e1fabe955e6bddee852f2d.jpg?alt=media&token=98d75e68-2405-4e4a-b547-8dbd94d174b0',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/Tashkent5.jpg?alt=media&token=c2955637-fc76-460a-a14f-baad4a50e6f5'
      ],
      user: TravelUser.alex,
      locationDesc: 'Tashkent City Park Madaniyat va istirohat bog‘i',
    ),
    TravelPlace(
      id: '2',
      name: 'Samarqand',
      likes: 140,
      shared: 49,
      description:
          '  Samarqand dunyo taraqqiyotining eng qadimgi va markaziy shaharlaridan '
          'biri boʻlib, jahon madaniyati va fani xazinasiga katta hissa qoʻshgan shahardir.'
          'Samarqand — Oʻzbekiston Respublikasi Samarqand viloyatidagi qadimiy '
          'shahar. Viloyatning maʼmuriy, iqtisodiy va madaniy markazi '
          '(1938-yildan). 1925—30 yillarda Respublika poytaxti.'
          ' Oʻzbekistonning janubi-gʻarbida, Zarafshon vodiysining markaziy '
          'qismida (Dargʻom va Siyob kanallari orasida) joylashgan. Oʻrtacha '
          '695 m balandlikda. Toshkentdan 300 km. Samarqanddan Toshkent—Dushanbe,'
          " Toshkent—Turkmanboshi, Toshkent—Uchquduq—Qo'ng'irot temir yoʻllari,"
          "Katta Oʻzbek trakti (Toshkent—Termiz yo'li) oʻtadi. Shahar aholisi va "
          "xoʻjaliklari Shovdor, Bogʻishamol ariqlaridan suv oladi. "
          "Iyulning oʻrtacha harorati 25,9°, eng baland harorat 40—42°, "
          "yanvar oʻrtacha harorati 0,2°, eng past harorat —26°. Maydoni "
          "120 km². Aholisi 519600 ming kishi (2016); 1975-yil 299000,"
          " 1970-yil 267000, 1959-yil 196000, 1939-yil 136000, 1897-yil "
          "55000, 1865-yil 26000.Samarqand shahar Kengashiga qarashli 4 "
          "shaharcha (Ingichka, Kimyogarlar, Farhod, Hishrov) mavjud.",
      imagesUrl: [
        'https://avatars.mds.yandex.net/get-zen_doc/3385297/pub_5ebaeedacbfa886ba5804d88_5ec7eebc69e19b673df07ab2/scale_1200',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/samarkand-vid-1_KD1RLXq.jpg?alt=media&token=8c58832c-33a3-4a77-a3a3-58bd352d4d6a',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/ty3lv0iy397726.jpg?alt=media&token=f8a1e227-05fa-4b68-8a7b-f1b372be4c93',
      ],
      statusTag: StatusTag.event,
      user: TravelUser.mario,
      locationDesc: 'Registon meʻmoriy majmuasi, Yodgorlik Samarqand',
    ),
    TravelPlace(
      id: '3',
      likes: 29,
      shared: 40,
      name: 'Buxoro',
      description:
          '  Buxoro — oʻrta asrning 140 dan ortiq arxitektura yodgorliklarini oʻzida'
          ' saqlagan „muzey shahardir“. Koʻp asrlar avval qurilgan Poi Kalon, '
          'Qoʻsh Madrasa, Somoniylar maqbarasi, minorai kalon kabi ansambllar '
          'bugungi kungada ham barchaning diqqatida.'
          'Buxoro shahri qadim zamonlarda qanday nomlangani — nomaʼlum. '
          'Milodiy V asrga oid xitoy manbalarida Buxoro shahri Nyumi tarzida tilga'
          ' olinib oʻtilgan. Binobarin, shaharda shu nomdagi mulk hukmdorining qarorgohi '
          'ham boʻlgan. Tan imperiyasining VII asrga oid solnomalarida Buxoro shahri An '
          '(Ango), Ansi, Buxo (Buxe, Fuxo) shakllarida qayd etib oʻtilgan. Keyinchalik '
          'shahar har xil nomlana boshladi. Arab qadimiy manbalarda u Bumiskat, Madinat '
          'us-sufriya (Mis shahar), Numijkat (soʻgʻdcha numij yoki namich degani mashhur '
          'degan maʼnoni anglatgan) tarzida keltirilgan. Qadimiy zamonlarda yashagan '
          'mahalliy mualliflarning fikricha, shaharning nomi Buxor, yaʼni „Sanamlar'
          ' turgan ibodatxona“ maʼnosini anglatuvchi bir soʻzdan kelib chiqqan.'
          ' Ayrim tadqiqotchilarning faraz qilishlaricha, Buxoro nomi mintaqaning eng '
          "asosiy buddaviylik ibodatxonasi vixara yoki ana shu vixaraning sug'diy "
          'transkripsiyasi boʻlmish buxoro (ibodatxona) soʻzidan kelib chiqqan.'
          ' Ammo buddaviylik va moniylik diniy taʼlimotlariga oid osori atiqalar'
          ' shahar hududida ham, umuman, Buxoro vohasida ham topilgan emas.'
          ' Buxoro (Buxara) toponimi ilk bor Soʻgʻd yozuvlari bilan Buxoroda zarb '
          'qilingan mis tangalarida tilga olingan (milodiy IV-V asrlar).',
      imagesUrl: [
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/f8cd1786da6d94818dd8a.jpg?alt=media&token=29500b72-d29c-4736-b478-5d727be6f257',
        'http://photocdn.photogoroda.com/source2/cn9787/r9796/c9798/4123497.jpg?v=20171213112136',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/buhara1.jpg?alt=media&token=d4c1ac03-acb7-4911-ba0f-799049171319',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/LR2018.05-UZ-Buxoro-2.jpg?alt=media&token=1a920778-1efc-4bc9-97d1-f5bc11c46433',
      ],
      statusTag: StatusTag.event,
      user: TravelUser.luna,
      locationDesc: 'Masjidi Kalon Buxoro',
    ),
    TravelPlace(
      id: '4',
      name: 'Termez',
      shared: 500,
      likes: 39,
      description:
          '  Oʻzbekiston Respublikasining Surxondaryo viloyatidagi shahar. Viloyat markazi '
          'Amudaryoning oʻng sohilida, Oʻzbekistonning janub qismida, Afgʻoniston '
          'chegarasiga yaqin, oʻrtacha 310 m balandlikda joylashgan. Xalqaro daryo porti.'
          'Temir yoʻl stansiyasi. Toshkentdan 708 km. Maydoni 27,8 km².'
          ' Aholisi 119,6 ming kishi (2004). Iqlimi kontinental, issiq va'
          ' quruq, yozi jazirama issiq (Oʻzbekistondagi eng issiq shahar –'
          ' eng yuqori temperatura 50-60c°, hozirgi kunda), qishi iliq va'
          ' qisqa. Yillik oʻrtacha temperatura 16–18°. Yanvarning oʻrtacha'
          ' temperaturasi 2,8–3,6, iyulniki 28–32°. Baʼzida, qishda sovuq – '
          '20° va undan ham past boʻladi. Yillik yogʻin 133 mm. Termiz '
          'shahri logistika uchun strategik nuqta hisoblanadi.',
      imagesUrl: [
        "http://3.bp.blogspot.com/-ehx74ZoCBU0/VT0rBJLaESI/AAAAAAABsm8/n8cPNWBU_xo/s1600/DSC_5856.JPG",
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/photo_2022-05-13_21-46-30.jpg?alt=media&token=ebf44c40-c622-485a-8cd7-fcead982e2a8',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/plgYVhZu3UV87AJPCe0Re96FKtsV8IXy_normal.jpg?alt=media&token=edf33086-be4d-446d-aa5e-f5a895f7c59d',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/hakima_at-tirmizi%20(2).jpg?alt=media&token=9c4966e9-b0aa-4a23-b484-6097f433cf63',
      ],
      statusTag: StatusTag.event,
      user: TravelUser.lili,
      locationDesc: 'Sulton Saodat maqbaralar majmuasi Yodgorlik',
    ),
    TravelPlace(
      id: '5',
      name: 'Xiva',
      shared: 500,
      likes: 39,
      description:
          '  Xiva – Oʻzbekiston Respublikasining Xorazm viloyatidagi shahar. '
          'Xiva shahri markazi. Oʻzbekistonning shimoliy gʻarbida, Xorazm '
          'viloyatning janubida, Amudaryoning chap sohilida, daryodan 40 km '
          'janubida, 95 m balandlikda joylashgan.  Shahar yonidan Polvonyop '
          '(qadimiy Xeykaniq) kanali oʻtgan. Yaqin temir yoʻl stansiyasi'
          ' – Urganch (30 km). Maydoni 0,08 ming km². 2022-yil 1-yanvar '
          'holatiga Xiva tuman doimiy aholisining soni 149 698 kishi, Xiva '
          'shahri – 95 246 kishini tashkil qilgan. Shaharning qadimgi'
          ' qismidagi juda koʻp arxitektura yodgorliklariga boy boʻlgan Ichan-Qal’a Sharqning'
          ' ekzotik shahar timsolini oʻzida saqlab qolgan afsonaviy shahardir.',
      imagesUrl: [
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/Khorazm.jpg?alt=media&token=98aa141f-14bf-4a88-a50b-d8401c1e3325',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/Xiva.jpg?alt=media&token=54cadc24-eac0-4a6c-bd5a-056e8c525c3b',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/Xorazm3.jpg?alt=media&token=059293a1-cd82-447e-b8a6-27d427212afb',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/maxresdefault.jpg?alt=media&token=001a0c7f-6ca9-4b3b-83c1-fc608cf73df3',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/Xorazm2.jpg?alt=media&token=c5e73d4c-c9ef-4b84-850f-7ade44572dcf',
      ],
      statusTag: StatusTag.event,
      user: TravelUser.javier,
      locationDesc: 'Ichan-Qalʼa',
    ),
    TravelPlace(
      id: '6',
      name: 'Navoiy',
      shared: 500,
      likes: 39,
      description:
          '  Navoiy Oʻzbekistonning Navoiy viloyatidagi shahardir. Bu shahar '
          'Navoiy viloyatning maʼmuriy, iqtisodiy va madaniy markazidir.'
          ' Oʻzbekistonning janubi-gʻarbida, '
          'Zarafshon daryosi vodiysida, viloyatning sharqiy chekkasida, 347 m'
          ' balandlikda joylashgan.Navoiy shahri Alisher Navoiy sharafiga '
          'atab shunday nomlangan. Shimolda qadimiy Karmana shahri joylashgan boʻlib, '
          'oʻtmishda Buxoro amirligining bekligi hisoblangan. Janubda'
          ' Temir yoʻl stansiyasi va bir qishloq boʻlgan, hozirda bu '
          'joy Navoiy shahrining Vokzaloldi hududi deb ataladi.'
          ' 1958-yilning sentabr oyida Navoiy shahri sanoatlashgan shahar '
          'sifatida tashkil topdi. Shu vaqtdan Navoiy viloyati tashkil '
          'topganga qadar Navoiy shahri Buxoro viloyati tarkibida boʻlib keldi.'
          'Zarafshon daryosining yaqinligi, yirik qishloq xoʻjaligi hududning'
          ' markazida joylashganligi, transport bilan yaxshi taʼminlanganligi'
          ' shaharning tez oʻsish omili boʻldi. Navoiy Oʻrta Osiyoda yirik '
          'elektr energiya va kimyo sanoati markazi hisoblanadi.',
      imagesUrl: [
        "https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/Navoiy.jfif?alt=media&token=8880ee53-1fc3-4ab7-9e04-ef1c705b7c4a",
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/1384_2021_02_09_1.jpg?alt=media&token=3df0fcee-28ea-4c75-b2d9-8bc2c4190661',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/navoiy.jpg?alt=media&token=5ba6f6ba-044f-4fde-ad1c-b0035af14b67',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/navoiy4.jpg?alt=media&token=a6c25d7f-5840-4c83-a0ce-25b55b6c053c',
      ],
      statusTag: StatusTag.event,
      user: TravelUser.camila,
      locationDesc: 'Nurota maskani',
    ),
    TravelPlace(
      id: '7',
      name: 'Fargʻona',
      shared: 500,
      likes: 39,
      description:
          "  Farg'ona o'zining go'zal landshaftlari bilan mashhur bo'lgan olis shahar."
          "'Chimyon' kurorti Olay tog 'etaklaridagi shifobaxsh mineral"
          " buloqlarning muvozanati bilan mashhur bo'lgan Chimen qishlog'iga"
          " asoslangan. Eng katta kurort Markaziy Osiyoda joylashgan."
          "Fargʻona viloyatining maʼmuriy, iktisodiy va madaniy markazi, "
          "respublikaning yirik shaharlaridan biri. Maydoni 0,09 ming km²."
          " Aholisi 222,4 ming kishi (2004, Fargʻona vodiysidagi shaharlar "
          "ichida aholi soni boʻyicha 3-oʻrinda). Shahar Fargʻona vodiysining "
          "jan. qismida, Olay togʻlarining etagida, 580 m balandlikda joylashgan."
          "\n Fargʻona eng yashil shahar Markaziy Osiyoda darahtlar oʻstirish "
          "boʻyicha,yaʼni chinorlarni.Chinorlar Fargʻonaning ramzi hisoblannadi"
          "Fargʻona eng koʻp ishlab chiqaruvchi shahar Toshkent dan soʻng"
          "Adabiy tilning asosi Fargʻona shevasi hisoblanadi.",
      imagesUrl: [
        "https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/norbutabiy-madrasah-facade-norbut-biy-huge-portal-decorated-arabesques-two-domes-covered-glazed-tiles-69422421.jpg?alt=media&token=f4bcbfbd-ab26-4e92-a809-c29cd983e71f",
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/fargoniy.jfif?alt=media&token=1552d072-d5a8-41a9-a5e0-4b62a3b72614',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/fargona.jpg?alt=media&token=5c6eb889-fe31-49bf-a48b-c5f97add0cb2',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/Kokand.jpg?alt=media&token=d10cdb5a-a72b-4424-90bf-e03fe2a7ab9e',
      ],
      statusTag: StatusTag.event,
      user: TravelUser.rouse,
      locationDesc: 'Al-Fargʻoniy yodgorligi',
    ),
    TravelPlace(
      id: '8',
      name: 'Andijon',
      shared: 500,
      likes: 39,
      description: "  Andijon Oʻzbekistonning Andijon viloyatidagi shahardir."
          " Viloyatning maʼmuriy, iqtisodiy va madaniy markazi."
          " Oʻzbekistonning yirik industrial shaharlaridan biri."
          " Shahar Fargʻona vodiysining sharqida. "
          "Andijonsoy yoqasida, dengiz sathidan 450 m balandlikda joylashgan."
          "\nShaharda 48 zamonaviy yirik sanoat korxonalari, 63 qurilish tashkilotlari"
          "va mahalliy sanoat korxonalari ishlab turibdi. „Andijonmash“, "
          "„Andijonirmash“ kabi aksiyadorlik jamiyatlari paxta zavodlari "
          "uchun uskunalar, qishloq xoʻjaligi mashinalariga ehtiyoj qismlar, "
          "nasoslar, universal yuklagichlar, aylanma pluglar, nogironlar uchun "
          "aravachalar va boshqa anjomlarni ishlab chiqaradi.",
      imagesUrl: [
        "https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/andijon3.jpg?alt=media&token=bd0ddc46-3997-430b-ae07-665050ded7c2",
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/Andijon5.jpg?alt=media&token=d743b2af-cd41-4504-bfec-351ca2e024d1',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/andijon4.jpg?alt=media&token=156dd188-f1d6-418c-8f57-5219f928395d',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/andijon1.jpg?alt=media&token=df3c86ba-a3d5-49d6-b40f-0658fa8c227d',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/andijon2.jpg?alt=media&token=ed8614d3-fe46-4053-b163-3f83fa41b1e7',
      ],
      statusTag: StatusTag.event,
      user: TravelUser.hemma,
      locationDesc: 'Zahiriddin Muhammad Bobur haykali yodgorligi',
    ),
    TravelPlace(
      id: '9',
      name: 'Namangan',
      shared: 500,
      likes: 39,
      description:
          "  Namangan — Namangan viloyatidagi shahar. Viloyatning maʼmuriy,"
          " iqtisodiy va madaniy markazi Aholi soni boʻyicha Fargʻonadan "
          "oldingi oʻrinda. Oʻzbekistonning yirik shaharlaridan biri. "
          "Fargʻona vodiysining har jihatdan peshqadam viloyati. Vodiyning "
          "shim.da, Shim. Fargʻona kanali bilan Namangansoy "
          "kesishgan yerda, 450 m balandlikda joylashgan. Maydoni 83,3 ming km²."
          "\nFargʻona vodiysining qad. poytaxti Axsikat (Axsikent) "
          "1620-yildagi qattiq zilzila natijasida vayron boʻlganligi"
          " sababli, uning aholisi hozirgi Namangan shahri hududiga koʻchib "
          'oʻtgan. Namangan tuz koni ("Namak kon") yaqinida vujudga kelgan boʻlib, '
          "shahar nomi oʻrta asrlarga oid tarixiy xujjatlarda birinchi marta tilga olinadi.",
      imagesUrl: [
        "https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/namangan.jpg?alt=media&token=904920a7-8809-42bf-99b5-907a8c3df67e",
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/namangan1.jpg?alt=media&token=625626b9-7de0-4d85-aa96-52b092dd850b',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/namangan2.jpg?alt=media&token=e4d77199-ccc1-45ef-8be9-d4833f9d1f6a',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/namangan6.jpg?alt=media&token=d6dc380a-c7da-443d-be44-43f271511c48',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/namangan4.jpg?alt=media&token=9b5cf5c3-7d6c-425f-b1a1-bdf89c0e5d1e',
      ],
      statusTag: StatusTag.event,
      user: TravelUser.jenifer,
      locationDesc: 'Afsona bogʻi',
    ),
    TravelPlace(
      id: '10',
      name: 'Qarshi',
      shared: 500,
      likes: 39,
      description:
          "  Qashqadaryo vohasining markazida, Qashqadaryo boʻyida, xalqaro temir"
          " yoʻl va avtomobil yoʻllari kesishgan joyda. Maydoni 7,5 ming "
          "gektar. Qarshi Oʻzbekistonning qadimiy shaharlaridan biri. "
          "U turli davrlarda Bolo, Nashebolo, Naxshap, Nasaf, "
          "nomlari bilan yuritilib, XIV asrdan Qarshi deb atala boshlagan."
          "\nQarshi shahrining oʻzbek tarixida oʻziga xos oʻrni bor. "
          "Qarshi shahri iqtisodiyoti xizmat koʻrsatish sektoriga asoslangan."
          " Aholining katta qismi savdo, bank, ta'lim, sogʻliqni saqlash"
          " kabi xizmat koʻrsatishga asoslangan iqtisodiyot tarmoqlarida faoliyat yuritadi.",
      imagesUrl: [
        "https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/qarshi.jpg?alt=media&token=0167679d-5639-4337-ae62-ba71c22246f0",
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/qarshi3.jpg?alt=media&token=b74eca49-ad0d-4e44-b15e-385a6f0fd31f',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/qarshi1.jpg?alt=media&token=240769a8-0b09-41b7-b398-49f2f6a1513a',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/qarshi2.jpg?alt=media&token=6949c0fa-3221-4883-8c3b-00e469df4bb7',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/qarshi4.jpg?alt=media&token=ca5f6312-3b48-487b-8226-ff44a86c0e82',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/qarshi5.jpg?alt=media&token=5cf2d456-24a9-4976-812c-7ab7b71ca565',
      ],
      statusTag: StatusTag.event,
      user: TravelUser.sancho,
      locationDesc: 'Qarshi Shahrisabz markazi',
    ),
    TravelPlace(
      id: '11',
      name: 'Guliston',
      shared: 500,
      likes: 39,
      description:
          "  Sirdaryo viloyatidagi shaxar - Oʻzbekiston Respublikasi tarkibidagi viloyat."
          " 1963-yil 16 fevralda tashkil etilgan.Sirdaryo viloyatidagi shahar,"
          " viloyatning maʼmuriy, iqtisodiy va madaniy markazi. Mirzachoʻlning"
          ' jan.-sharqida, 276 m balandlikda, "Doʻstlik" kanali sohilida. '
          "Toshkentdan 118 km. G.dan Toshkent—Xovos temir yoʻl oʻtgan. Shimolidan Qozogʻiston "
          "Respublikasi, sharqdan Toshkent viloyati, janubidan Tojikiston Respublikasi "
          "va gʻarbdan Jizzax viloyati bilan chegaradosh. Maydoni 4.28 ming km.",
      imagesUrl: [
        "https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/%D0%93%D0%BE%D1%80%D0%BE%D0%B4_%D0%93%D1%83%D0%BB%D0%B8%D1%81%D1%82%D0%B0%D0%BD.jpg?alt=media&token=373d1cc6-0e58-40ed-9376-28d56fb8bd35",
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/sirdaryo.jpg?alt=media&token=ccd70e51-2d79-4ecd-9198-d1b46112bae1',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/sirdaryo2.jpg?alt=media&token=d207690b-0b86-4e5a-86c9-6f823447ecdd',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/sirdaryo1.jpg?alt=media&token=9750a9b9-94e3-4b4f-b032-573701d7110e',
      ],
      statusTag: StatusTag.event,
      user: TravelUser.alexa,
      locationDesc: 'Guliston shaxri',
    ),
    TravelPlace(
      id: '12',
      name: 'Jizzax',
      shared: 500,
      likes: 39,
      description:
          "  Jizzax viloyati — Oʻzbekiston Respublikasi tarkibidagi viloyat. "
          "Respublikaning markaziy qismida. Shim.-sharqda Qozogʻiston Respublikasi va Sirdaryo "
          "viloyati, janubi-gʻarbda Samarqand, Navoiy viloyatlari, janubisharqda "
          "Tojikiston Respublikasi bilan chegaradosh. Maydon 21,2 ming km2."
              "Jizzax Oʻrta Osiyodan oʻtgan bir necha qadimiy karvon yoʻlining "
              "tutashgan joyida vujudga kelgan. Asosan oʻzbeklar, rus, tatar,"
              " ukrain, eroniy va boshqalar ham yashaydi.",
      imagesUrl: [
        "https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/Jizzax0.jpg?alt=media&token=5d7ab623-ddf5-4888-b0ef-cab46db5c86f",
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/Jizzax1.jpg?alt=media&token=01b3ac84-200a-4a54-b77d-de3562b3dc31',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/Jizzax4.jpg?alt=media&token=0c84cf67-c082-48cd-a5e1-f9b12598cb86',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/jizzax5.jpg?alt=media&token=ac2d99d1-6e16-4ce1-afdc-e6a46c94a3d0',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/Jizzax3.jpg?alt=media&token=2ea26286-17f4-4e35-a7ce-d3a873a2bbc7',
      ],
      statusTag: StatusTag.event,
      user: TravelUser.eric,
      locationDesc: "Zomin tog'lari",
    ),
    TravelPlace(
      id: '13',
      name: 'Nukus',
      shared: 500,
      likes: 39,
      description: "  Qoraqalpogʻiston — Oʻzbekiston Respublikasi"
          " tarkibidagi Suveren demokratik Respublika. 1924-yil 14-oktabrda "
          "bolsheviklar tomonidan Turkiston ASSR tarkibida Muxtor viloyat "
          "sifatida tashkil etilgan. Maydoni 166,6 ming km². Respublika"
          " poytaxti – Nukus shahri. Tarkibida 16 "
          "tuman, 12 shahar, 14 shaharcha va 124 fuqarolar yigʻini bor."
          "Nukus — Qoraqalpogʻistonning ilm-fan va madaniyat markazi. "
          "\nOʻzbekistonning yosh va ko'rkam shaharlaridan biri.",
      imagesUrl: [
        "https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/qoraqalpoq.jpeg?alt=media&token=27e1e926-08cc-48e7-a9aa-3e3e0e0a9e90",
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/qoraqalpoq1.jpeg?alt=media&token=96ec7645-4239-438e-8c57-443078ad2045',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/qoraqalpoq0.jpeg?alt=media&token=13d8624c-7be3-4bfe-bfa6-5399644fa180',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/qoraqalpoq2.jpeg?alt=media&token=6c88634c-d8bb-4613-8cb5-d7316c58ccf5',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/qoraqalpoq3.jpeg?alt=media&token=f958cb39-7e71-4a60-be16-e8a9a377f74d',
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/qoraqalpoq4.jpg?alt=media&token=0b1f2fca-6a19-4df7-9340-ed3e0bf59d78',
      ],
      statusTag: StatusTag.event,
      user: TravelUser.marko,
      locationDesc: "Nukus shahri",
    ),
  ];
  static final collectionPlaces = [
    TravelPlace(
      name: 'San Miguel de Allende',
      imagesUrl: [
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/photo_2017_07_28_15_46_31.jpg?alt=media&token=7a62c6a7-ea00-4bdf-8d5d-f22883eaf97d',
        // 'https://images.unsplash.com/photo-1518105779142-d975f22f1b0a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=60'
      ],
      user: TravelUser.mario,
    ),
    TravelPlace(
      name: 'Chichen Itza',
      imagesUrl: [
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/54140c1d546e808df31fa37b3249930e.jpg?alt=media&token=d3926938-ae46-446c-8e93-d9e54a7f3265',
        // 'https://images.unsplash.com/photo-1518638150340-f706e86654de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=867&q=60'
      ],
      user: TravelUser.mario,
    ),
    TravelPlace(
      name: 'Ciudad de Mexico',
      imagesUrl: [
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/DSCF6711.jpg?alt=media&token=522e1fbb-d90c-4507-b252-efbfdcf839f6',
        // 'https://images.unsplash.com/photo-1574493264149-87880133a2ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=874&q=60'
      ],
      user: TravelUser.mario,
    ),
    TravelPlace(
      name: 'Teotihuacan',
      imagesUrl: [
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/t1.jpg?alt=media&token=e81d1a07-d7d8-4fe4-9cf8-bc874f61d5f6',
      ],
      user: TravelUser.mario,
    ),
    TravelPlace(
      name: 'Taxco',
      imagesUrl: [
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/t3.jpg?alt=media&token=2a50e993-8893-4463-a303-636323f308f9'
      ],
      user: TravelUser.mario,
    ),
    TravelPlace(
      name: 'Acapulco',
      imagesUrl: [
        'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/t2.jpg?alt=media&token=8e775586-5cfd-42cc-b5e9-9d3ab73dbb8b'
      ],
      user: TravelUser.luna,
    ),
  ];
}

class TravelUser {
  TravelUser(this.name, this.urlPhoto);

  final String name;
  final String urlPhoto;

  static TravelUser lili = TravelUser(
    'Lily Juarez',
    'https://images.unsplash.com/photo-1457732815361-daa98277e9c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=60',
  );
  static TravelUser alex = TravelUser(
    'Alex Fernandez',
    'https://images.unsplash.com/photo-1589304038421-449708a42983?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
  );
  static TravelUser mario =
      TravelUser('Mario Calzada', 'https://i.ibb.co/c1j1VDT/yo.jpg');
  static TravelUser luna = TravelUser(
    'Luna Benioly',
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=334&q=80',
  );
  static TravelUser javier = TravelUser(
    'Javier',
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=334&q=80',
  );
  static TravelUser camila = TravelUser(
    'Camila Juarez',
    'https://images.unsplash.com/photo-1457732815361-daa98277e9c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=60',
  );
  static TravelUser rouse = TravelUser(
    'Rouse Fernandez',
    'https://images.unsplash.com/photo-1589304038421-449708a42983?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
  );
  static TravelUser hemma =
      TravelUser('Hemma Calzada', 'https://i.ibb.co/c1j1VDT/yo.jpg');
  static TravelUser jenifer = TravelUser(
    'Jenifer Benioly',
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=334&q=80',
  );
  static TravelUser sancho = TravelUser(
    'Sancho',
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=334&q=80',
  );
  static TravelUser alexa = TravelUser(
    'Alexa Juarez',
    'https://images.unsplash.com/photo-1457732815361-daa98277e9c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=60',
  );
  static TravelUser eric = TravelUser(
    'Eric Fernandez',
    'https://images.unsplash.com/photo-1589304038421-449708a42983?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
  );
  static TravelUser marko =
      TravelUser('Marko Calzada', 'https://i.ibb.co/c1j1VDT/yo.jpg');

  static List<TravelUser> users = [
    alex,
    mario,
    luna,
    lili,
    javier,
    camila,
    rouse,
    hemma,
    jenifer,
    sancho,
    alexa,
    eric,
    marko
  ];
}

enum StatusTag { popular, event }


class TravelPlaces{
  String? name;

  TravelPlaces(this.name);

  TravelPlaces.fromJson(Map<String,dynamic>json){
    name=(json['name']as String);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    if (name != null) {
      data['name'] = name;
    }
    data['name'] = name;

    return data;
  }

}