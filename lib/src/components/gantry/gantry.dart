import '../../gen/common/v1/common.pb.dart';
import '../../resource/base.dart';
import '../../robot/client.dart';

/// {@category Components}
/// Gantry represents a physical Gantry and can be used for controlling gantries of N axes.
///
/// For more information, see [Gantry component](https://docs.viam.com/dev/reference/apis/components/gantry/).
abstract class Gantry extends Resource {
  static const Subtype subtype = Subtype(resourceNamespaceRDK, resourceTypeComponent, 'gantry');

  /// Get the position of the axes in millimeters.
  ///
  /// ```
  /// var position = await myGantry.position();
  /// ```
  ///
  /// For more information, see [Gantry component](https://docs.viam.com/dev/reference/apis/components/gantry/#getposition).
  Future<List<double>> position({Map<String, dynamic>? extra});

  /// Move the gantry to a new position in millimeters at the requested speeds in millimeters/second.
  ///
  /// ```
  /// await myGantry.moveToPosition([0.0, 20.5], [15, 15]);
  /// ```
  ///
  /// For more information, see [Gantry component](https://docs.viam.com/dev/reference/apis/components/gantry/#movetoposition).
  Future<void> moveToPosition(List<double> positions, List<double> speeds, {Map<String, dynamic>? extra});

  /// Run the homing sequence and return true if completed successfully.
  ///
  /// ```
  /// var homed = await myGantry.home();
  /// ```
  ///
  /// For more information, see [Gantry component](https://docs.viam.com/dev/reference/apis/components/gantry/#home).
  Future<bool> home({Map<String, dynamic>? extra});

  /// Get the lengths of the axes of the gantry in millimeters.
  ///
  /// ```
  /// var lengths = await myGantry.lengths();
  /// ```
  ///
  /// For more information, see [Gantry component](https://docs.viam.com/dev/reference/apis/components/gantry/#getlengths).
  Future<List<double>> lengths({Map<String, dynamic>? extra});

  /// Stop all motion of the [Gantry]. It is assumed the [Gantry] stops immediately.
  ///
  /// ```
  /// await myGantry.stop();
  /// ```
  ///
  /// For more information, see [Gantry component](https://docs.viam.com/dev/reference/apis/components/gantry/#stop).
  Future<void> stop({Map<String, dynamic>? extra});

  /// Whether the [Gantry] is currently moving.
  ///
  /// ```
  /// var moving = await myGantry.isMoving();
  /// ```
  ///
  /// For more information, see [Gantry component](https://docs.viam.com/dev/reference/apis/components/gantry/#ismoving).
  Future<bool> isMoving();

  /// Get the [ResourceName] for this [Gantry] with the given [name]
  ///
  /// ```
  /// final myGantryResourceName = myGantry.getResourceName("my_gantry");
  /// ```
  ///
  /// For more information, see [Gantry component](https://docs.viam.com/dev/reference/apis/components/gantry/#getresourcename).
  static ResourceName getResourceName(String name) {
    return Gantry.subtype.getResourceName(name);
  }

  /// Get the [Gantry] named [name] from the provided robot.
  ///
  /// ```
  /// final myGantry = Gantry.fromRobot(myRobotClient, "my_gantry");
  /// ```
  ///
  /// For more information, see [Gantry component](https://docs.viam.com/dev/reference/apis/components/gantry/).
  static Gantry fromRobot(RobotClient robot, String name) {
    return robot.getResource(Gantry.getResourceName(name));
  }
}
