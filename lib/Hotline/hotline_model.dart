class Hotline {
  String? name;
  String? contact;
  String? urlToImage;
  String? email;
  String? website;
  String? description;

  Hotline(
    this.name,
    this.contact,
    this.urlToImage,
    this.email,
    this.website,
    this.description,
  );

  static List<Hotline> HotlineData = [
    Hotline(
        "BEFRIENDERS",
        "03-76272929",
        "https://www.lowyat.net/wp-content/uploads/2019/07/e46d8795-befrienders-kuching.jpg",
        "admin@befrienders.org.my",
        "https://www.befrienders.org.my/",
        "Befrienders is a not-for-profit organisation providing emotional support 24 hours a day, 7 days a week, to people who are lonely, in distress, in despair, and having suicidal thoughts - without charge."),
    Hotline(
        "THRIVE WELL",
        "+6018-900-3247",
        "https://scontent.fkul15-1.fna.fbcdn.net/v/t1.6435-9/200982135_3727811530656541_9073833361165625747_n.png?_nc_cat=101&ccb=1-7&_nc_sid=973b4a&_nc_ohc=KAsgWuJxq2IAX8eNfNx&_nc_ht=scontent.fkul15-1.fna&oh=00_AfD6gFchG3QHnuu328ug9JtKnOk21tnzQgkHMWpRRD_5Tg&oe=63B2805A",
        "center@thethrive.center / info@thethrive.center",
        "https://www.thethrive.center/",
        "Thrive Well is a Social Enterprise with a mission to expand trauma-informed community mental health services to individuals, communities and organisations, with a focus on building community resilience in high-needs communities, in a sustainable manner. Clients with a monthly household income below a certain threshold will qualify for financial aid based on availability of program funding."),
    Hotline(
        "MALAYSIAN MENTAL HEALTH ASSOCIATION (MMHA)",
        "03-2780 6803",
        "https://www.humansofkl.com/wp-content/uploads/2020/04/71659403_2767621493277018_3419643898694205440_o-1024x1024.png",
        "admin@mmha.org.my",
        "https://mmha.org.my/",
        "Malaysian Mental Health Association provides support via their phone line on any mental health issues. MMHA also has qualified mental health professionals ie. clinical psychologist, and counselors providing psychological support services. Financial subsidies are readily available to ensure that necessary therapy and support is given to anyone who needs it."),
    Hotline(
        "LIFE LINE ASSOCIATION MALAYSIA",
        "03-42657995",
        "https://www.lookp.com/assets/logo/life-line-association-malaysia/life-line-association-malaysia-profile.jpg",
        "counselling@lifeline.org.my",
        "https://lifeline.org.my/7995/?lang=en",
        "Lifeline accosiation Malaysia offers free consultation service face-to-face, over the phone and through email. Their motto is 'Help is as close as the telephone'. "),
    Hotline(
        "WOMEN'S AID ORGANIZATION (WAO)",
        "+603 3000 8858",
        "https://assets.nst.com.my/images/articles/Women%E2%80%99s_Aid_Organisation_1_1582271334.jpg",
        "info@wao.org.my",
        "https://wao.org.my/",
        "Women’s Aid Organisation (WAO) is an independent, non-religious, non-governmental organisation based in Malaysia , committed to confronting Violence against women. It provides free shelter, counselling, and crisis support to women and children who experience abuse."),
    Hotline(
        "CENTRE FOR PSYCHOLOGICAL AND COUNSELLING SERVICES(CPCS)",
        "03 2716 2000",
        "https://www.humansofkl.com/wp-content/uploads/2020/04/71659403_2767621493277018_3419643898694205440_o-1024x1024.png",
        "cpcs.hu@help.edu.my",
        "https://www.cpcs-helpuni.com/",
        "The Centre for Psychological and Counselling Services (CPCS) has been established by the Department of Psychology of HELP University to meet the community’s need for greater service provision in the field of mental health and to make mental healthcare accessible to all people in the community.\n\nAs the university's campus mental healthcare service centre, the CPCS main objective is to promote mental and emotional wellbeing across campus through the provision of psycho-education, therapy and psychological assessment services. The CPCS serves as a training facility to the Master of Clinical Psychology and Masters in Counseling programs of the university to assist in the training and development of future professionals while ensuring that the mental health needs of the students and staff of the HELP group on campus and of the community are met. As part of HELP University's contribution to society, all profits of the CPCS will be used for the funding of community service projects."),
  ];
}
