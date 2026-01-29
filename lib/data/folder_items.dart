import 'package:cv/data/file_list_items.dart';

class FolderIcon {
  final String icon;
  final String folderTitle;
  final FileListItem folderContent;
  const FolderIcon({
    required this.icon,
    required this.folderTitle,
    required this.folderContent,
  });
}

List<FolderIcon> folderIconList = [
  FolderIcon(
    icon: "assets/images/folder_red.png",
    folderTitle: "Robotics & Vision",
    folderContent: roboticVisionFolder,
  ),
  FolderIcon(
    icon: "assets/images/folder_blue.png",
    folderTitle: "Controller Apps",
    folderContent: controllerAppFolder,
  ),
  FolderIcon(
    icon: "assets/images/folder_orange.png",
    folderTitle: "ROS2 Projects",
    folderContent: ros2ProjectFolder,
  ),
  FolderIcon(
    icon: "assets/images/folder_green.png",
    folderTitle: "Embedded & IoT",
    folderContent: embeddedIotFolder,
  ),
  FolderIcon(
    icon: "assets/images/folder_cyan.png",
    folderTitle: "Robocon Tools",

    folderContent: roboconToolsFolder,
  ),
  FolderIcon(
    icon: "assets/images/folder_grey.png",
    folderTitle: "Personal Projects",

    folderContent: personalProjectsFolder,
  ),
  FolderIcon(
    icon: "assets/images/folder_yellow.png",
    folderTitle: "Academic Projects",
    folderContent: academicProjecsFolder,
  ),
];
