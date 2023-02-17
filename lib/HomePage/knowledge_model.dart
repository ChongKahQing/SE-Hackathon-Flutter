class Knowledge {
  String? title;
  String? author;
  String? content;
  String? urlToImage;
  String? date;

  //let's create the constructor
  Knowledge(
    this.title,
    this.author,
    this.content,
    this.date,
    this.urlToImage,
  );

  static List<Knowledge> KnowledgeData = [
    Knowledge(
        "10 of the Best Movies Ever Made About Mental Health",
        "Samuel R. Murrian",
        "Here are 10 of the best films about mental health ever made. They'll both inspire you and make you think. So curl up with a bowl of popcorn, and enjoy. \n\n1. Silver Linings Playbook (2012)\n2. Ordinary People (1980)\n3. Melancholia (2011)\n4. Inside Out (2015)\n5. One Flew Over the Cuckoo's Nest (1975)\n6. Gaslight (1940) and Gaslight (1944)\n7. What's Eating Gilbert Grape (1993)\n8. Lars and the Real Girl (2007)\n9. Krisha (2016)\n10. A Beautiful Mind (2001)",
        "2022-10-10",
        "https://parade.com/.image/t_share/MTkwNTc4NDY1MzQwMjA0MTU3/insideout.jpg"),
    Knowledge(
        "World Mental Health Day: Know all about theme and significance",
        "BS Web Team",
        "Every year on October 10, nations and organisations across the world observe Mental Health Day to raise awareness about mental health issues and mobilise efforts and support towards it.\nAccording to the World Health Organisation (WHO), each year, around 12 billion working days are lost to depression and anxiety, which costs the global economy around 1 billion. Moreover, the Covid-19 pandemic has caused an increase of 25 per cent in anxiety and depression worldwide.\nThe rise in social and economic inequalities, protracted conflicts, violence, and public health emergencies are further threatening progress towards improved well-being of people across the globe, says the WHO.\nBefore the outbreak of the pandemic, an estimated one in eight persons in the world was living with mental disorders.\nOne in seven people from India between 1990 and 2017 has suffered from mental illness such as depression, anxiety, and other severe condition, according to a WHO report.",
        "2022-10-10",
        "https://s.calendarr.com/upload/03/4c/world-mental-health-day.png"),
    Knowledge(
        "Busting common mental health myths and misconceptions",
        "Gaby FL",
        "1. \"Mental health problems are uncommon\"\nIt's wrong to think that only certain people have mental health issues. According to World Health Organization (WHO), approximately 450 million people worldwide are experiencing a mental or neurological disorder. \n\n2. \"Those living with a mental health disorder are unable to work\"\nPeople with mental health problems are just as productive as other workers. Mental Health First Aid stated that a study found that 54.5% of individuals with a severe mental health condition were employed, compared to 75.9% of people without a mental illness.\n\n3. \"Mental health problems are signs of weakness\"\nMental health has nothing to do with weakness or lack of willpower. It's not a condition that one chooses to have or not have. When someone's suffering from mental health issues, it's not because that person is lazy or 'not putting enough effort to snap out of it.'\n\n4. \"Nothing can be done to prevent developing mental health conditions\"\nMany aspects can help people prevent mental health problems. Some of these could be strengthening social and emotional skills, seeking help and support early on, developing supportive family relationships, having a positive school or work environment, and healthy sleep patterns.\n\n5. \"You can't help someone with a mental health problem\"\nPeople with mental health problems can get better and recover with the proper help. And family, friends, and loved ones can make a big difference.",
        "2022-01-18",
        "https://cloudfront-us-east-1.images.arcpublishing.com/culturacolectiva/NUPLPMDTDRE3NE4K56CA4GUEDI.jpg"),
    Knowledge(
        "How Social Media Use Affects Mental Health",
        "Michal Mitchell",
        "1. Problems With Impulse Control\nDo you find yourself endlessly scrolling through your social media feed on your phone? All you want to do is watch short 'funny cat compilation' clips. Just one or two, right? It seems like it's only been a few minutes, but then you look at the clock and realize it's been a few hours. Too much time on social media can affect your focus and impulse control. Which means it may be harder to concentrate and study for that big test tomorrow, when all you want to do is look at your phone.\n\n2. Fear of Missing Out or 'FOMO'\nYou're scrolling through your social media feed when you notice an exciting post from your friend. You suddenly feel anxious realizing an interesting event is happening somewhere and you're missing out. This is often known as 'FOMO' or the 'fear of missing out.' Social media apps are constantly showing you the 'best versions' of people's lives which are often filtered and selective. Because of this, you may think your friends are living a better life than you, and feel anxious that you're missing out on these extreme experiences. \n\n3. Self-Esteem Issues\nDo you struggle with low self-esteem after spending a good amount of time on social media? Even if you're aware of photos being filtered or altered, the exposure to these photos can make some people feel insufficient. Excessive feelings of insecurity and discontentment can be caused due to frequent social media use.",
        "2021-08-07",
        "https://images.prismic.io/cerebral/c3965daa-a50d-4cc9-a65b-d425860f585e_social%20media-health.desk.png?ixlib=gatsbyFP&auto=compress%2Cformat&fit=max&w=990&h=550"),
    Knowledge(
        "3 Signs You're Not an Introvert, But Depressed",
        "Sidney",
        "1. You Lack Energy and Motivation\nOne of the most common hallmarks of depression is a lack of energy and motivation (Psychiatry.org 2020). Having depression can make even small tasks feel impossible and taking a nap feel much more desirable. Things that you normally would enjoy doing are just too hard, so you may find yourself sitting out of activities a lot. This is not usually the case with introverts. Introverts may find social activities draining and need recharge time later, however they will likely have the energy to go out beforehand. A person who is introverted and not depressed will likely not struggle with feeling overly exhausted and unmotivated all the time.\n\n2. You Used to Enjoy Going Out\nAnother big sign of depression is losing interest in activities that were previously enjoyed. People with depression may find that going out with friends isn't as fun as it used to be. This is different from introversion as introverts generally would not shift so suddenly. Perhaps if you’re an introvert, you never really enjoyed going out. Of course, it is natural to change preferences over time and things that were interesting at one time may not be later. This becomes problematic, however, when you find that nothing gives you any enjoyment (Raypole 2021). \n\n3. You Have Problems Eating, Sleeping, or Working\nDepression comes with a lot more than affecting your moods. You may find that with it, other areas of your life change. You may find yourself overeating or undereating, that you sleep too much or too little, and that work is impossible. As an introvert, you may find that this is not the case. As introversion is related to your personality, you likely wouldn't experience a sudden shift in any of these areas because of it (Granneman 2017). ",
        "2022-07-26",
        "https://images.everydayhealth.com/images/coping-with-depression-a-guide-to-good-treatment-1440x810.jpg"),
    Knowledge(
        "Examples How Gaslighting Sounds Like",
        "Jade Hamilton",
        "Gaslighting originates in the psychological manipulation by a husband towards his wife in Patrick Hamilton’s 1939 stage play Gas Light and the film adaptations released in 1940 and 1944 (Wikipedia Contributors, 2019). In the story, the husband attempts to convince his wife and others that she is insane by manipulating small elements of their environment and insisting that she is mistaken, remembering things incorrectly, or delusional when she points out these changes. The play's title alludes to how the abusive husband slowly dims the gas lights in their home, while pretending nothing has changed, in an effort to make his wife doubt her own perceptions.\n\nExamples:\n\n1. \" I don't remember saying that. I think you've made that up.\" This is the 'go to' phrase that a gaslighter will say intentionally to get you questioning your experience, behaviour and thoughts in order to take the focus off them.\n\n2. \"You're too emotional.\" This implies that your characteristics are seen as a flaw and this can make you question your own sense of who you are.\n\n3. \"You need help.\" This is used by gaslighters to again, imply that you are the problem and that you need to address your issues rather than them working through their own issues. This is a shut down response to avoid working through things with you.",
        "20220-10-06",
        "https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2022/05/GettyImages-538061902_header-1024x575.jpg?w=1155&h=1528"),
  ];
}
