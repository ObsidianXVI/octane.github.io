part of octane;

class ProfessionalDetailsView extends StatefulWidget {
  const ProfessionalDetailsView({super.key});

  @override
  State<StatefulWidget> createState() => ProfessionalDetailsViewState();
}

class ProfessionalDetailsViewState extends State<ProfessionalDetailsView>
    with TypeScale {
  final PageController pageController = PageController();

  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 1),
        () => pageController.animateToPage(
              1,
              duration: const Duration(milliseconds: 1200),
              curve: Curves.easeInOutQuart,
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewScaffold(
      child: SelectionArea(
        child: ViewportSnappingScrollView(
          controller: pageController,
          children: [
            ViewportSize(
              child: Center(
                child: Text(
                  'PROFESSIONAL',
                  style: pageTitle(color: OctaneTheme.obsidianA150),
                ),
              ),
            ),
            ViewportSize(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Curriculum Vitae (CV)',
                      style: heading1(color: OctaneTheme.obsidianA150),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Personal Information",
                      style: heading2(color: OctaneTheme.obsidianB000),
                    ),
                    Text(
                      "Siddharth Chitikela",
                      style: body1(color: OctaneTheme.obsidianB000),
                    ),
                    Text(
                      "Schools",
                      style: heading2(color: OctaneTheme.obsidianB000),
                    ),
                    Text(
                      "TKSS",
                      style: heading3(color: OctaneTheme.obsidianB000),
                    ),
                    Text(
                      "- Buncha stuff",
                      style: body1(color: OctaneTheme.obsidianB000),
                    ),
                  ],
                ),
              ),
            ),
            ViewportSize(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Actually, what we want to do here is to continue the picture from neck-down of Tommy to show his full height
                    Text(
                      'Contact Details',
                      style: heading1(color: OctaneTheme.obsidianA150),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      """If you have any enquiries related to my work or would simply like to chat, please feel free to reach out through any of the following platforms:

Email: infinitum.labs.inc@gmail.com
LinkedIn: www.linkedin.com/in/siddharth-chitikela

I'd be more than happy to respond!
""",
                      textAlign: TextAlign.center,
                      style: body1(color: OctaneTheme.obsidianB000),
                    ),
                    Image.asset(
                      'images/artworks/Signature.png',
                      height: 300,
                    ),
                  ],
                ),
              ),
            ),

            /* ViewportSize(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 20,
                    width: 600,
                    height: 600,
                    child: Image.asset(
                      'images/avatar.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: 50,
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      width: 820,
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment.topRight,
                          radius: 0.8,
                          colors: [
                            OctaneTheme.obsidianD050,
                            OctaneTheme.obsidianD050.withOpacity(0.8),
                            OctaneTheme.obsidianD050.withOpacity(0.6),
                            Colors.transparent,
                          ],
                          stops: const [0, 0.2, 0.4, 1],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'About Me',
                            textAlign: TextAlign.right,
                            style: heading1(color: OctaneTheme.obsidianA150),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            """I'm Siddharth Chitikela, a passionate developer who is currently studying in IBDP year two. I have a burning passion to learn as much as I can about the world of information systems, and to learn by doing. Whether I have to learn a new language like Dart, a new tool like Docker, or a new concept like web security, I am more than ready because I undertake challenges with genuine curiosity and interest — not fear or intimidation. As such, I am able to pick up the necessary skills and domain knowledge required to accomplish goals even in uncharted territory. Furthermore, having had to juggle academics, extra-curricular activites and personal commitments together  with my coding projects, I have developed a stringent work ethic that enables me to give every task my complete attention and effort.

Apart from coding with coffee and some good hip-hop, I also play badminton, football, and the electric guitar. But I would always pick hanging out with my bestest friends over anything, in a heartbeat. Sometimes I also try to draw photorealistic cars, but I'm not very good at it, so I stick to logo designing.""",
                            textAlign: TextAlign.right,
                            style: body1(color: OctaneTheme.obsidianB000),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ViewportSize(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Actually, what we want to do here is to continue the picture from neck-down of Tommy to show his full height
                    Text(
                      'My Journey',
                      style: heading1(color: OctaneTheme.obsidianA150),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 700),
                      child: Text(
                        """My foray into the programming world started when I was fourteen, and I picked up a little Python to build CLI scripts and automations. From there, once I realised how much control over data and processes programming languages can give, I could not stop exploring. I experimented with iOS shortcuts as well, building quite complex tools for personal use, and then I moved on to Scriptable for iOS — an app that lets you program custom iOS widgets using JavaScript. Once I discovered NodeJS, my interest really took off, turning from a curiosity to a strong passion. With NodeJS, I built a few Discord bots and had a bit of fun, but by then my confidence had increased, so wanted to develop my own application. Without knowing anything about app development, databases, networking or security, I took a leap of faith. I remember that at fifteen, all I had was a decent grasp of NodeJS and a rough idea of the app I wanted to build. However, I taught myself everything needed to build a full-fledged app, from Flutter and Dart (remember, learning a statically-typed language for the first time can be quite mind-boggling) to Firestore, JSON web tokens, and the MVC app architecture. Soon, I plan to research into the field of autonomic computing, since it has always been a dream of mine to build a self-managed system.""",
                        style: body1(color: OctaneTheme.obsidianB000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ViewportSize(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Actually, what we want to do here is to continue the picture from neck-down of Tommy to show his full height
                    Text(
                      'Curriculum Vitae',
                      style: heading1(color: OctaneTheme.obsidianA150),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(
                          width: 700,
                          child: Text(
                            """My portfolio consists of many coding projects of different sizes and topics, but most of them are web apps because I enjoy designing the user interface for each app from scratch. From picking the font families and colour schemes to designing the layout for each screen and individual components, I'm extremely familiar with the interface design process since I've applied it to a variety of different use cases. In the designing of the user experience, I also experiment with new concepts that I think might be more effective than existing solutions, such as Hotboxes or the Tandem-Rendered UI (TRUI). However, implementing these novel ideas into Flutter, which is the framework I use to build my web apps, requires that I develop a strong grasp of not only the Dart language, but also the Flutter SDK as well. Over the course of my projects, I have developed a strong bond with Flutter, and despite its one-line error messages, I can eventually track down and resolve every single bug, even if it takes hours sometimes. Complementing most of the Flutter frontends are Firestore databases that persist data across sessions, and so I am also familiar with Firebase hosting and Firestore storage as well. I enjoy building scalable Flutter apps architected for efficiency and maintainability that can integrate seamlessly with Firestore databases.""",
                            style: body1(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        const SizedBox(width: 40),
                        Image.asset(
                          'images/artworks/airship.png',
                          width: 500,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ViewportSize(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Actually, what we want to do here is to continue the picture from neck-down of Tommy to show his full height
                    Text(
                      'Contact Details',
                      style: heading1(color: OctaneTheme.obsidianA150),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      """If you have any enquiries related to my work or would simply like to chat, please feel free to reach out through any of the following platforms:

Email: infinitum.labs.inc@gmail.com
LinkedIn: www.linkedin.com/in/siddharth-chitikela

I'd be more than happy to respond!
""",
                      style: body1(color: OctaneTheme.obsidianB000),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 450, top: 80),
                      child: Image.asset(
                        'images/artworks/Signature.png',
                        height: 500,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
           */
          ],
        ),
      ),
    );
  }
}