class FileListItem {
  final String folderTitle;
  final List<String> folderContent;

  const FileListItem({required this.folderTitle, required this.folderContent});
}

final roboticVisionFolder = FileListItem(
  folderTitle: "Robotics & Vision",
  folderContent: [
    "yolov11_ball_detection_system.md",
    "robocon_2026_vision_pipeline.md",
  ],
);

final controllerAppFolder = FileListItem(
  folderTitle: "Controller Apps",
  folderContent: ["drone_controller_app.md", "android_robot_controller_app.md"],
);

final ros2ProjectFolder = FileListItem(
  folderTitle: "ROS2 Projects",
  folderContent: [
    "4_wheel_mecanum_drive_robot.md",
    "4_wheel_omni_wheel_robot.md",
    "4_wheel_swerve_drive_robot.md",
  ],
);
final embeddedIotFolder = FileListItem(
  folderTitle: "Embedded & IoT",
  folderContent: [
    "plant_monitoring_system.md",
    "water_monitoring_system.md",
    "diy_7_segment_digital_clock.md",
  ],
);
final roboconToolsFolder = FileListItem(
  folderTitle: "Robocon Tools",
  folderContent: ["robocon_2025_competition_scoreboard"],
);
final personalProjectsFolder = FileListItem(
  folderTitle: "Personal Projects",
  folderContent: ["my_portfolio_website.md"],
);

final academicProjecsFolder = FileListItem(
  folderTitle: "Academic Projects",
  folderContent: [
    "student_management_system.md",
    "mp3_player.md",
    "terminal_based_cafe_pos_system.md",
  ],
);
