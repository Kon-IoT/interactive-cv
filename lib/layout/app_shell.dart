import 'package:flutter/material.dart';
import 'package:cv/data/folder_items.dart';
import 'package:cv/data/project_items.dart';
import 'package:cv/layout/top_profile_section.dart';
import 'package:cv/theme/cyber_theme.dart';
import 'package:cv/widgets/about_me_desktop.dart';
import 'package:cv/widgets/about_me_mobile.dart';
import 'package:cv/widgets/background_desktop.dart';
import 'package:cv/widgets/background_mobile.dart';
import 'package:cv/widgets/contact_me_mobile.dart';
import 'package:cv/widgets/draggable_terminal.dart';

import 'package:cv/widgets/file_manager_window.dart';
import 'package:cv/widgets/gif_box.dart';
import 'package:cv/widgets/header_mobile.dart';
import 'package:cv/widgets/introduction_desktop.dart';
import 'package:cv/widgets/projects_desktop.dart';
import 'package:cv/widgets/readme_window.dart';
import 'package:cv/widgets/stacks_desktop.dart';
import 'package:cv/widgets/terminal_window.dart';
import 'terminal_header.dart';
import 'side_profile_section.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

typedef ProjectCallback = void Function(ProjectItem project);

class _AppShellState extends State<AppShell> {
  final ScrollController scrollController = ScrollController();

  final aboutKey = GlobalKey();
  final backgroundKey = GlobalKey();
  final stacksKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();
  Offset fileManagerPos = const Offset(10, 0);
  Offset projectTerminalPos = const Offset(10, 250);
  Offset readmeTerminalPos = const Offset(10, 600);
  FolderIcon? activeFolder;
  ProjectItem? activeProject;

  bool showFileManager = false;
  bool showProjectTerminal = false;
  bool showReadmeTerminal = false;
  final Map<String, ProjectItem> projectLookup = {
    for (final p in [
      ...roboticsVisionProjects,
      ...controllerAppProjects,
      ...ros2Projects,
      ...embeddedIoTProjects,
      ...roboconProjects,
      ...infraProjects,
      ...personalProjects,
      ...academicProjects,
    ])
      p.projectFolder: p,
  };

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = MediaQuery.of(context).size.width > 1400;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final showHeader = constraints.maxHeight > 50;
          return Stack(
            children: [
              Positioned.fill(
                child: Column(
                  children: [
                    if (showHeader)
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: 1,
                          maxHeight: 70,
                          minWidth: screenWidth,
                        ),
                        child: HearderMobile(
                          onNavSelected: (index) {
                            final keys = [
                              aboutKey,
                              backgroundKey,
                              stacksKey,
                              projectsKey,
                              contactKey,
                            ];

                            final ctx = keys[index].currentContext;
                            if (ctx == null) return;

                            Scrollable.ensureVisible(
                              ctx,
                              duration: const Duration(milliseconds: 600),
                              curve: Curves.easeInOutCubic,
                              // alignment: 0.1,
                            );
                          },
                        ),
                      ),
                    Expanded(
                      child: Row(
                        children: [
                          if (isDesktop) SideProfileSection(),
                          Expanded(
                            child: SingleChildScrollView(
                              padding: const EdgeInsets.all(24),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ColorPalette.ghBackground,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: ColorPalette.ghBorder,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    if (!isDesktop) TopProfileSection(),
                                    TerminalHeader(),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      width: double.maxFinite,
                                      height: isDesktop ? 250 : 150,
                                      child: GifBox(
                                        gifPath: "assets/gif/anime_girl.gif",
                                      ),
                                    ),

                                    IntroductionDesktop(),
                                    KeyedSubtree(
                                      key: aboutKey,
                                      child: isDesktop
                                          ? AboutMeDesktop()
                                          : AboutMeMobile(),
                                    ),
                                    SizedBox(height: 50),
                                    KeyedSubtree(
                                      key: backgroundKey,
                                      child: isDesktop
                                          ? BackgroundDesktop()
                                          : BackgroundMobile(),
                                    ),
                                    SizedBox(height: 50),
                                    KeyedSubtree(
                                      key: stacksKey,
                                      child: StacksDesktop(),
                                    ),
                                    SizedBox(height: 50),
                                    KeyedSubtree(
                                      key: projectsKey,
                                      child: ProjectsDesktop(),
                                    ),
                                    SizedBox(height: 50),
                                    ProjectFolderGenerator(),
                                    SizedBox(height: 24),
                                    KeyedSubtree(
                                      key: contactKey,
                                      child: ContactMeMobile(),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      width: double.maxFinite,
                                      height: isDesktop ? 300 : 150,
                                      child: GifBox(
                                        gifPath: "assets/gif/phone.gif",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (showFileManager && activeFolder != null)
                Positioned(
                  left: fileManagerPos.dx,
                  top: fileManagerPos.dy,
                  child: DraggableTerminal(
                    width: 300,
                    height: 220,
                    window: FileManagerWindow(
                      onWindowClose: () {
                        setState(() {
                          showFileManager = false;
                        });
                      },
                      selectedFolder: activeFolder!,
                      onScriptExecuted: (fileName) {
                        final key = fileName.replaceAll(".md", "");

                        final project = projectLookup[key];
                        if (project == null) return;

                        setState(() {
                          activeProject = project;
                          showProjectTerminal = true;
                          showReadmeTerminal = true;
                        });
                      },
                    ),
                    onDrag: (delta) {
                      setState(() {
                        fileManagerPos += delta;
                      });
                    },
                  ),
                ),

              if (showProjectTerminal && activeProject != null)
                Positioned(
                  left: projectTerminalPos.dx,
                  top: projectTerminalPos.dy,
                  child: DraggableTerminal(
                    onDrag: (delta) {
                      setState(() {
                        projectTerminalPos += delta;
                      });
                    },
                    width: 300,
                    height: 300,
                    window: TerminalWindow(
                      project: activeProject!,
                      onWindowClose: () {
                        setState(() {
                          showProjectTerminal = false;
                        });
                      },
                    ),
                  ),
                ),

              if (showReadmeTerminal && activeProject != null)
                Positioned(
                  left: readmeTerminalPos.dx,
                  top: readmeTerminalPos.dy,
                  child: DraggableTerminal(
                    width: 300,
                    height: 400,
                    window: ReadmeWindow(
                      onWindowClose: () {
                        setState(() {
                          showReadmeTerminal = false;
                        });
                      },
                      readmeFile: activeProject!.readmeFile,
                    ),
                    onDrag: (delta) {
                      setState(() {
                        readmeTerminalPos += delta;
                      });
                    },
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  ConstrainedBox ProjectFolderGenerator() {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 1500),
      child: Column(
        children: [
          Text(
            "P.s. double-tap the folder icon",
            style: TextStyle(
              fontSize: 12,
              color: ColorPalette.cyberElectricBlue,
            ),
          ),
          SizedBox(height: 24),
          Center(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                for (int i = 0; i < folderIconList.length; i++)
                  Container(
                    width: 150,
                    height: 150,
                    padding: EdgeInsets.all(5),
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onDoubleTap: () {
                        setState(() {
                          activeFolder = folderIconList[i];
                          showFileManager = true;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            folderIconList[i].icon,
                            width: 75,
                            height: 75,
                          ),
                          SizedBox(height: 14),
                          Text(
                            softWrap: true,
                            folderIconList[i].folderTitle,
                            style: TextStyle(fontSize: 16),
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
    );
  }
}
