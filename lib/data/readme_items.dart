class ReadmeItem {
  final String title;
  final String description;
  final List<String> stacks;
  const ReadmeItem({
    required this.title,
    required this.description,
    required this.stacks,
  });
}

final robotics_and_vision_p1_rm = ReadmeItem(
  title: "yolov11_ball_detection_system",
  description:
      "This project focuses on building a reliable object detection system for autonomous robotics scenarios where color-based ball detection is critical. The model was custom-trained to distinguish between visually similar objects under non-ideal lighting conditions commonly found in competition environments.Beyond training, significant effort was spent on dataset preparation, class balancing, and tuning inference parameters to reduce false positives and improve consistency. The system was integrated into a ROS 2 workflow, publishing detection results as messages consumable by downstream robot logic.The primary challenges involved handling lighting variance, motion blur, and ensuring real-time performance on embedded hardware. This project emphasizes practical deployment considerations rather than purely model accuracy.",
  stacks: [
    "assets/images/python.png",
    "assets/images/ros2.png",
    "assets/images/opencv.png",
    "assets/images/ultralytics.png",
  ],
);

final robotics_and_vision_p2_rm = ReadmeItem(
  title: "robocon_2026_vision_pipeline",
  description:
      """This project extends beyond standalone object detection into a complete perception pipeline designed for Robocon 2026. 
        The goal is to bridge raw vision outputs with robot decision-making logic in a clean and maintainable ROS 2 architecture. 
        The pipeline includes detection, post-processing, class filtering, and message synchronization to ensure consistent data flow into control 
        and actuation nodes. Emphasis is placed on modular node design, clear topic interfaces, and predictable latency behavior. Ongoing work focuses 
        on robustness, fault handling, and improving integration between perception and motion planning components in a real competition environment.""",
  stacks: [
    "assets/images/python.png",
    "assets/images/ros2.png",
    "assets/images/opencv.png",
    "assets/images/ultralytics.png",
  ],
);
final controller_app_p1_rm = ReadmeItem(
  title: "drone_controller_app",
  description:
      """This project is a ground-station style Android application designed to visualize telemetry and control drones using MAVLink-based communication. 
        The primary focus is on UI architecture and system layout rather than flight control algorithms. The interface is structured to separate telemetry 
        display, control inputs, and system status indicators, allowing for scalable feature expansion. Qt/QML is used to rapidly prototype responsive layouts 
        while maintaining performance on mobile hardware. Current development prioritizes clean UI layering, message handling structure, and preparation for 
        future integration with real drone hardware.""",
  stacks: [
    "assets/images/flutter.png",
    "assets/images/dart.png",
    "assets/images/qt.png",
    "assets/images/cpp.png",
  ],
);
final controller_app_p2_rm = ReadmeItem(
  title: "android_robot_controller_app",
  description:
      """This application was developed to provide real-time control and monitoring of robots through a mobile interface. It communicates with robots using 
        UDP networking and integrates with ROS 2 to exchange commands, telemetry, and sensor data. The app supports bidirectional communication, enabling both 
        command transmission and live feedback. Special attention was given to latency, connection stability, and maintaining responsiveness during continuous 
        data streaming. This project highlights practical challenges in mobile-to-robot communication and the trade-offs involved in real-time networking on 
        Android platforms.""",
  stacks: [
    "assets/images/java.png",
    "assets/images/android.png",
    "assets/images/ros2.png",
  ],
);

final ros2_project_p1_rm = ReadmeItem(
  title: "4_wheel_mecanum_drive_robot",
  description:
      """This project implements an omnidirectional mobile robot using mecanum wheels to allow movement in any direction without rotation. The focus is on 
        kinematic modeling, velocity control, and translating high-level motion commands into individual wheel velocities. ROS 2 was used to structure the 
        control system into modular nodes, making the system easier to debug and extend. Deployment on Jetson Xavier introduced additional considerations 
        related to performance and hardware constraints. The project serves as a foundation for understanding more advanced drive systems and motion control strategies.""",
  stacks: ["assets/images/python.png", "assets/images/ros2.png"],
);
final ros2_project_p2_rm = ReadmeItem(
  title: "4_wheel_omni_wheel_robot",
  description:
      """This project explores omni-wheel drive as an alternative omnidirectional locomotion strategy. The robot was used to study differences in kinematics, 
        control complexity, and movement behavior compared to mecanum-based systems. Through experimentation, the project evaluates trade-offs such as traction, 
        control smoothness, and ease of implementation. ROS 2 enables rapid iteration on control logic and parameter tuning. The work contributes to a broader 
        understanding of mobile robot drive mechanisms in real-world applications.""",
  stacks: ["assets/images/python.png", "assets/images/ros2.png"],
);
final ros2_project_p3_rm = ReadmeItem(
  title: "4_wheel_swerve_drive_robot",
  description:
      """This project implements a swerve-drive robot where each wheel can independently rotate and drive, allowing for highly flexible motion control. 
        Compared to other drive systems, swerve drive introduces greater mechanical and software complexity. The project focuses on coordinated steering control, 
        velocity synchronization, and command translation within a ROS 2 framework. Running on an Orange Pi emphasizes efficient computation and careful resource 
        management. This work represents an advanced step in mobile robotics control and highlights challenges in precision motion systems.""",
  stacks: ["assets/images/python.png", "assets/images/ros2.png"],
);
final embeded_iot_p1_rm = ReadmeItem(
  title: "plant_monitoring_system",
  description:
      """This IoT project was designed to automate plant care by monitoring environmental conditions such as soil moisture and triggering irrigation when 
        thresholds are met. The system combines embedded sensing with cloud-based data logging. Data is transmitted over HTTP and logged to Google Sheets, 
        enabling simple visualization and long-term monitoring without complex infrastructure. A lightweight UI was built to display system status and historical 
        trends. The project emphasizes reliability, low cost, and ease of deployment in small-scale environments.""",
  stacks: [
    "assets/images/arduino.png",
    "assets/images/c.png",
    "assets/images/cpp.png",
    "assets/images/flet.png",
  ],
);
final embeded_iot_p2_rm = ReadmeItem(
  title: "water_monitoring_system",
  description:
      """This project focuses on monitoring water quality using embedded sensors connected to an ESP32 running ESP-IDF. Sensor data is periodically uploaded to the cloud 
        for visualization and analysis. ThingSpeak is used as the data platform, enabling integration with MATLAB for signal analysis and trend evaluation. The system 
        highlights embedded data acquisition, communication reliability, and post-processing of sensor data. This project bridges embedded systems with basic data 
        analytics and environmental monitoring use cases.""",
  stacks: [
    "assets/images/esp32.png",
    "assets/images/c.png",
    "assets/images/cpp.png",
    "assets/images/matlab.png",
  ],
);
final embeded_iot_p3_rm = ReadmeItem(
  title: "diy_7_segment_digital_clock",
  description:
      """This project implements a wireless digital clock using ESP-NOW for low-latency communication between microcontrollers. The system avoids traditional 
        networking stacks to reduce overhead and improve timing accuracy. The design focuses on synchronization, message reliability, and hardware-level timing 
        considerations. Python and PySerial were used during development for debugging and configuration. The project demonstrates efficient embedded communication 
        techniques for constrained environments.""",
  stacks: [
    "assets/images/python.png",
    "assets/images/c.png",
    "assets/images/cpp.png",
    "assets/images/matlab.png",
  ],
);
final robocon_project_p1_rm = ReadmeItem(
  title: "robocon_2025_competition_scoreboard",
  description:
      """This application was built to support live match scoring during Robocon 2025 competitions. It provides real-time score updates, timing control, and operator 
        interaction through a simple desktop interface. The system prioritizes responsiveness and clarity, ensuring that score changes are immediately visible. 
        Python was chosen for rapid development, while Tkinter and Pygame were used to handle UI rendering and event handling. This project demonstrates practical 
        software tooling for competition support environments.""",
  stacks: [
    "assets/images/python.png",
    "assets/images/tkinter.png",
    "assets/images/pygame.png",
  ],
);
final infra_pi_rm = ReadmeItem(
  title: "self_hosted_cloud_server",
  description:
      """This project involves deploying self-hosted services on a Raspberry Pi 5 to gain hands-on experience with Linux system administration and networking. 
        The setup explores service configuration, resource management, and network exposure. The system is designed to be modular and extensible, allowing additional 
        services to be added over time. Emphasis is placed on understanding infrastructure fundamentals rather than relying on managed cloud platforms. This project 
        strengthens practical knowledge of operating systems and networking concepts.""",
  stacks: ["assets/images/linux.png", "assets/images/raspberrypi.png"],
);
final personal_project_p1_rm = ReadmeItem(
  title: "my_portfolio_website",
  description:
      """This portfolio website was designed as a developer-centric platform to present projects in a structured and technical manner. The interface draws inspiration 
        from terminal and README-style layouts commonly used by engineers. The site emphasizes modular UI components, clean navigation, and responsiveness across devices. 
        Flutter Web was chosen to experiment with cross-platform UI development and custom interaction patterns. The project serves both as a personal showcase and a testbed for UI architecture ideas.""",
  stacks: ["assets/images/flutter.png", "assets/images/dart.png"],
);

final personal_project_p2_rm = ReadmeItem(
  title: "kon_iot_project",
  description:
      """This initiative focuses on documenting and explaining technical topics related to IoT, robotics, and engineering through short-form educational content. 
        The goal is to make complex concepts more accessible without sacrificing technical accuracy. Content creation involves scripting, screen recording, and 
        editing, with an emphasis on clear explanations and structured delivery. This project reflects an interest in knowledge sharing and technical communication 
        alongside hands-on engineering work.""",
  stacks: ["assets/images/capcut.png"],
);
final academic_project_p1_rm = ReadmeItem(
  title: "student_management_system",
  description:
      """This project is a desktop application developed to practice and demonstrate object-oriented programming principles. It implements role-based access for 
        administrators, teachers, and students. The system focuses on class design, encapsulation, and separation of concerns within a JavaFX application. This project 
        serves as a foundation for understanding larger software systems built around OOP concepts.""",
  stacks: ["assets/images/java.png", "assets/images/javafx.png"],
);
final academic_project_p2_rm = ReadmeItem(
  title: "mp3_player",
  description:
      """This project implements a basic MP3 player to explore desktop application development with JavaFX. Features include playback control, event handling, and GUI 
        layout management. The focus is on understanding application flow, UI interaction, and multimedia handling within a desktop environment. This project reinforces 
        fundamentals of event-driven programming and UI design.""",
  stacks: ["assets/images/java.png", "assets/images/javafx.png"],
);
final academic_project_p3_rm = ReadmeItem(
  title: "terminal_based_cafe_pos_system",
  description:
      """This command-line project simulates a café point-of-sale system using fundamental data structures. Orders, items, and transactions are managed using stacks, queues, 
        and doubly linked lists. The project emphasizes algorithmic thinking and practical application of data structures in a real-world-inspired scenario. It serves as a 
        foundational exercise in low-level programming and system logic design.""",
  stacks: ["assets/images/c.png", "assets/images/cpp.png"],
);
