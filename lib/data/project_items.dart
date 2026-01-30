import 'package:cv/data/readme_items.dart';

class ProjectItem {
  final String emoji;
  final String title;
  final String projectFolder;
  final String overview;
  final String tools;
  final String status;
  final String? repoLink;
  final String parentFolder;
  final ReadmeItem readmeFile;

  const ProjectItem({
    required this.emoji,
    required this.title,
    required this.projectFolder,
    required this.overview,
    required this.tools,
    required this.status,
    required this.parentFolder,
    required this.readmeFile,
    this.repoLink,
  });
}

final List<ProjectItem> roboticsVisionProjects = [
  // =========================
  // 🥇 FEATURED — ROBOTICS & VISION
  // =========================
  ProjectItem(
    emoji: "🤖👁️",
    title: "YOLOv11 Ball Detection System",
    projectFolder: "yolov11_ball_detection_system",
    overview:
        "Custom-trained YOLOv11 model for detecting blue, red, and purple balls for autonomous robotic decision-making.",
    status: "Completed",
    tools: "Python · ROS 2 · OpenCV · Ultralytics YOLOv11",
    repoLink: "Private",
    parentFolder: "robotics_and_vision",
    readmeFile: robotics_and_vision_p1_rm,
  ),
  ProjectItem(
    emoji: "🤖🧠",
    title: "Robocon 2026 Vision Pipeline",
    projectFolder: "robocon_2026_vision_pipeline",
    overview:
        "End-to-end vision pipeline integrating object detection outputs into robot logic for target selection and actuation.",
    status: "In Progress",
    tools: "Python · ROS 2 · OpenCV · Ultralytics YOLOv12",
    repoLink: "Private",
    parentFolder: "robotics_and_vision",
    readmeFile: robotics_and_vision_p2_rm,
  ),
];

final List<ProjectItem> controllerAppProjects = [
  // =========================
  // 🚁📱 ROBOT & DRONE CONTROL APPS
  // =========================
  ProjectItem(
    emoji: "🚁🖥️",
    title: "Drone Controller App",
    projectFolder: "drone_controller_app",
    overview:
        "Qt/QML-based Android ground-station UI for drone control and telemetry display (UI architecture completed).",
    status: "In Progress",
    tools: "Flutter · Dart · Qt/QML · C++ · MAVLink",
    repoLink: "Private",
    parentFolder: "robot_and_drone_controllers",
    readmeFile: controller_app_p1_rm,
  ),
  ProjectItem(
    emoji: "📱🤖",
    title: "Android Robot Controller App",
    projectFolder: "android_robot_controller_app",
    overview:
        "Android application built in Java to control robots via UDP and ROS 2 for real-time commands, video stream and telemetry exchange.",
    status: "Completed",
    tools: "Java · Android SDK · ROS 2 · UDP",
    repoLink: "Private",
    parentFolder: "robot_and_drone_controllers",
    readmeFile: controller_app_p2_rm,
  ),
];

final List<ProjectItem> ros2Projects = [
  // =========================
  // 🤖🛞 ROBOTICS WITH ROS2 PROJECTS
  // =========================
  ProjectItem(
    emoji: "🤖🛞",
    title: "4-Wheel Mecanum Drive Robot (ROS 2)",
    projectFolder: "4_wheel_mecanum_drive_robot",
    overview:
        "Omnidirectional mobile robot using mecanum wheels, implemented with ROS 2 (Python) on Jetson Xavier.",
    status: "Completed",
    tools: "Python · ROS 2",
    repoLink: "Private",
    parentFolder: "robotics_with_ros2",
    readmeFile: ros2_project_p1_rm,
  ),
  ProjectItem(
    emoji: "🤖🛞",
    title: "4-Wheel Omni-Wheel Robot (ROS 2)",
    projectFolder: "4_wheel_omni_wheel_robot",
    overview:
        "ROS 2-based omni-wheel robot exploring alternative kinematics and control strategies on Jetson Xavier.",
    status: "Completed",
    tools: "Python · ROS 2",
    repoLink: "Private",
    parentFolder: "robotics_with_ros2",
    readmeFile: robotics_and_vision_p2_rm,
  ),
  ProjectItem(
    emoji: "🤖🛞",
    title: "4-Wheel Swerve Drive Robot (ROS 2)",
    projectFolder: "4_wheel_swerve_drive_robot",
    overview:
        "Advanced swerve-drive robot using ROS 2 on Orange Pi with coordinated wheel steering and velocity control.",
    status: "In Progress",
    tools: "Python · ROS 2",
    repoLink: "Private",
    parentFolder: "robotics_with_ros2",
    readmeFile: ros2_project_p3_rm,
  ),
];
final List<ProjectItem> embeddedIoTProjects = [
  // =========================
  // 🌱 EMBEDDED & IoT SYSTEMS
  // =========================
  ProjectItem(
    emoji: "🌱📡",
    title: "Plant Monitoring & Auto-Watering System",
    projectFolder: "plant_monitoring_system",
    overview:
        "IoT system using Arduino and ESP8266 to monitor plant conditions and trigger automatic watering with cloud logging.",
    status: "Completed",
    tools: "Arduino · ESP8266 · C/C++ · HTTP · Google Sheets API · Flet",
    repoLink: "Private",
    parentFolder: "embedded_and_iot_systems",
    readmeFile: embeded_iot_p1_rm,
  ),
  ProjectItem(
    emoji: "🚰📊",
    title: "Water Contamination Detection System",
    projectFolder: "water_monitoring_system",
    overview:
        "ESP32 + ESP-IDF-based water quality monitoring system uploading sensor data to ThingSpeak for analysis.",
    status: "Completed",
    tools: "ESP32 · ESP-IDF · C/C++ · ThingSpeak · MATLAB",
    repoLink: "Private",
    parentFolder: "embedded_and_iot_systems",
    readmeFile: embeded_iot_p2_rm,
  ),
  ProjectItem(
    emoji: "⏱️📡",
    title: "DIY 7-Segment Digital Clock (ESP-NOW)",
    projectFolder: "diy_7_segment_digital_clock",
    overview:
        "Wireless digital clock using ESP-NOW for low-latency communication between embedded devices.",
    status: "Completed",
    tools: "ESP32 · ESP-NOW · C/C++ · Python · PySerial",
    repoLink: "Private",
    parentFolder: "embedded_and_iot_systems",
    readmeFile: embeded_iot_p3_rm,
  ),
];

final List<ProjectItem> roboconProjects = [
  // =========================
  // 🏁 ROBOCON SUPPORTING TOOLS
  // =========================
  ProjectItem(
    emoji: "🏁🖥️",
    title: "Robocon 2025 Competition Scoreboard",
    projectFolder: "robocon_2025_competition_scoreboard",
    overview:
        "Real-time competition scoreboard built with Python (Tkinter + Pygame) for live match scoring.",
    status: "Completed",
    tools: "Python · Tkinter · Pygame",
    repoLink: "Private",
    parentFolder: "robocon_supporting_tools",
    readmeFile: robocon_project_p1_rm,
  ),
];

final List<ProjectItem> infraProjects = [
  // =========================
  // ☁️ SYSTEMS & INFRASTRUCTURE
  // =========================
  ProjectItem(
    emoji: "☁️🐧",
    title: "Self-Hosted Cloud Server (Raspberry Pi 5)",
    projectFolder: "self_hosted_cloud_server",
    overview:
        "Self-hosted infrastructure project deploying services on a Raspberry Pi 5 with Linux and networking focus.",
    status: "In Progress",
    tools: "Linux · Raspberry Pi · Networking",
    repoLink: "Private",
    parentFolder: "systems_and_infra",
    readmeFile: infra_pi_rm,
  ),
];
final List<ProjectItem> personalProjects = [
  // =========================
  // 🖥️⚡ PERSONAL & PLATFORM
  // =========================
  ProjectItem(
    emoji: "🖥️⚡",
    title: "My Portfolio Website (Flutter Web)",
    projectFolder: "my_portfolio_website",
    overview:
        "Terminal-inspired portfolio built with Flutter Web using modular UI design, neon accents, and project-based navigation.",
    status: "In Progress",
    tools: "Flutter · Dart · Web",
    repoLink: "Private",
    parentFolder: "personal_projects",
    readmeFile: personal_project_p1_rm,
  ),
  ProjectItem(
    emoji: "🎬📝",
    title: "Kon-IoT Technical Content Initiative",
    projectFolder: "kon_iot_project",
    overview:
        "Educational content project documenting and explaining IoT, robotics, and engineering concepts through short-form videos and short documents.",
    status: "In Progress",
    tools: "Video Editing · Technical Writing · Screen Recording",
    repoLink: "Private",
    parentFolder: "personal_projects",
    readmeFile: personal_project_p2_rm,
  ),
];
final List<ProjectItem> academicProjects = [
  // =========================
  // 🎓 ACADEMIC & FOUNDATION
  // =========================
  ProjectItem(
    emoji: "🏫🧩",
    title: "Student Management System (OOP)",
    projectFolder: "student_management_system",
    overview:
        "Role-based desktop application supporting Admin, Teacher, and Student workflows using JavaFX and OOP principles.",
    status: "Completed",
    tools: "Java · JavaFX",
    repoLink: "Private",
    parentFolder: "academic_projects",
    readmeFile: academic_project_p1_rm,
  ),
  ProjectItem(
    emoji: "🎵🖥️",
    title: "MP3 Player (JavaFX)",
    projectFolder: "mp3_player",
    overview:
        "Desktop MP3 player with playback controls, event handling, and GUI design built using JavaFX.",
    status: "Completed",
    tools: "Java · JavaFX",
    repoLink: "Private",
    parentFolder: "academic_projects",
    readmeFile: academic_project_p2_rm,
  ),
  ProjectItem(
    emoji: "☕📋",
    title: "Terminal-Based Café POS System(DSP)",
    projectFolder: "terminal_based_cafe_pos_system",
    overview:
        "Command-line café point-of-sale system implementing doubly linked lists, stacks, and queues.",
    status: "Completed",
    tools: "C · C++",
    repoLink: "Private",
    parentFolder: "academic_projects",
    readmeFile: academic_project_p3_rm,
  ),
];
