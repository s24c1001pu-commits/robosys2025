import rclpy
from rclpy.node import Node
from person_msgs.msg import Person


class Listener(Node):
    def __init__(self):
        super().__init__('listener')
        self.subscription = self.create_subscription(
            Person,
            'person',
            self.listener_callback,
            10
        )

    def listener_callback(self, msg):
        self.get_logger().info(
            f'received: name={msg.name}, age={msg.age}'
        )


def main():
    rclpy.init()
    node = Listener()
    rclpy.spin(node)
    rclpy.shutdown()

